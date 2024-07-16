
# Functions & Errors

A simple token using Solidity.

## Description

The `AgeContract` is a Solidity smart contract designed to manage user ages on the Ethereum blockchain. It provides functionalities for setting and retrieving ages, along with demonstrating the usage of `require()`, `assert()`, and `revert()` statements to ensure data integrity and provide informative error handling.

## Getting Started

To deploy and interact with the `AgeContract` smart contract, you can use Remix, an online Solidity IDE. Follow these steps:

1. Go to the [Remix website](https://remix.ethereum.org/).
2. Create a new file and save it with a `.sol` extension.
3. Copy and paste the `AgeContract` smart contract code into the file.
4. Compile the contract by selecting the appropriate Solidity compiler version (e.g., `0.8.18`).
5. Deploy the contract and interact with its functions using Remix's interface.

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the [Remix website](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `FuncErrors.sol`). Copy and paste the following code into the file:

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to `0.8.18` (or another compatible version), and then click on the "Compile Func_Errors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the `FuncErrors` contract from the dropdown menu, and then click on the "Deploy" button.

After deploying the contract, you can interact with it in various ways:

1. **Query Balances**: Use the `balances` function to check the token balances of specific addresses.
2. **Verify Token Abbreviation**: Access the `tokenAbbrv` variable, which holds the string "JGI".
3. **Confirm Token Name**: Retrieve the value stored in the `tokenName` variable, which is set to "Jiggie".
4. **Check Total Supply**: Access the `totalSupply` variable to inquire about the total supply of tokens.
5. **Mint Tokens**: Add tokens to a designated address by calling the `mint` function with the address and the desired number of tokens as parameters.
6. **Burn Tokens**: Reduce or eliminate tokens from an address by specifying the address and the number of tokens to be destroyed using the `burn` function.

These functionalities collectively offer a comprehensive set of options for managing and interacting with the `Func_Errors` contract on the Ethereum blockchain.

## Authors

Mc Maurice Manuel  
[@YachiRu](https://github.com/YachiJishi)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
