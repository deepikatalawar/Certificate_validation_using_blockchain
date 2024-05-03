// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Certification {
    struct Certificate {
        string uid;
        string candidate_name;
        string course_name;
        string org_name;
        string ipfs_hash;
    }

    mapping(string => Certificate) public certificates;
    event CertificateGenerated(string certificate_id);

    function generateCertificate(
        string memory _certificate_id,
        string memory _uid,
        string memory _candidate_name,
        string memory _course_name,
        string memory _org_name,
        string memory _ipfs_hash
    ) public {
        require(
            bytes(_certificate_id).length > 0 &&
            bytes(_uid).length > 0 &&
            bytes(_candidate_name).length > 0 &&
            bytes(_course_name).length > 0 &&
            bytes(_org_name).length > 0 &&
            bytes(_ipfs_hash).length > 0,
            "All input parameters must be non-empty"
        );
        
        require(
            bytes(certificates[_certificate_id].ipfs_hash).length == 0,
            "Certificate with this ID already exists"
        );

        Certificate memory cert = Certificate({
            uid: _uid,
            candidate_name: _candidate_name,
            course_name: _course_name,
            org_name: _org_name,
            ipfs_hash: _ipfs_hash
        });

        certificates[_certificate_id] = cert;

        emit CertificateGenerated(_certificate_id);
    }

    function getCertificate(
        string memory _certificate_id
    )
        public
        view
        returns (
            string memory uid,
            string memory candidate_name,
            string memory course_name,
            string memory org_name,
            string memory ipfs_hash
        )
    {
        Certificate memory cert = certificates[_certificate_id];

        require(
            bytes(certificates[_certificate_id].ipfs_hash).length != 0,
            "Certificate with this ID does not exist"
        );

        return (
            cert.uid,
            cert.candidate_name,
            cert.course_name,
            cert.org_name,
            cert.ipfs_hash
        );
    }

    function isVerified(
        string memory _certificate_id
    ) public view returns (bool) {
        return bytes(certificates[_certificate_id].ipfs_hash).length != 0;
    }
}
