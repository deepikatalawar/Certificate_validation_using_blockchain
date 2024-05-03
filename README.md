# Certificate_validation_using_blockchain

This is certificate validation project using the blockchain. We have smart contracts deployed in it.

## Tech Stack

- **Ganache-cli**: Local blockchain network
- **Truffle**: Smart contract development and deployment
- **Streamlit**: Web application development
- **Pinata**: IPFS client
- **Docker**: Containerization of the application into different services

## Prerequisites

Before starting, ensure you have the following prerequisites installed:

- **Node**: Version 21.0.0 or higher
- **Python**: Version 3.9.10 or higher
- **Docker**
- **Globally installed packages** for Truffle and Ganache-cli:

```bash
npm install -g truffle ganache-cli
```
## Installation
```bash
# Clone the repository
$ git clone https://github.com/deepikatalawar/Certificate_validation_using_blockchain.git

# Navigate to the project directory
$ cd your-repository

# Install dependencies
$ npm install

# Setup Python environment (if necessary)
$ pip install -r requirements.txt
```

## Usage

To run the project, follow these steps:

1. **Start Ganache-cli**:
   Open a terminal and enter the command:
   ```bash
   ganache-cli -h 127.0.0.1 -p 8545
   ```
   This command will start the Ganache-cli.
   
2. **Deploy Smart Contracts**:
   Open command prompt in the project's root directory and enter:
   ```bash
   truffle migrate
   ```
   This will deploy the contracts on Ganache-cli.
   
3. **Start Streamlit App**:
   Navigate to the application directory inside your project in the command prompt and enter:
   ```bash
   streamlit run app.py
   ```
   This will start the Streamlit app.
   
