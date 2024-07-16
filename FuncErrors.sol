// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TokenContract {
    mapping(address => uint256) public balances;

    // Function to deposit tokens
    function depositTokens(uint256 _amount) public {
        // Require the deposit amount to be greater than 0
        require(_amount > 0, "Deposit amount must be greater than 0");

        // Increase the sender's balance
        balances[msg.sender] += _amount;
    }

    // Function to withdraw tokens
    function withdrawTokens(uint256 _amount) public {
        // Require the sender to have enough balance
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        // Decrease the sender's balance
        balances[msg.sender] -= _amount;
    }

    // Function to check balance
    function checkBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }

    // Function to demonstrate assert statement
    function assertExample(uint256 _x) public pure returns (uint256) {
        // Assert statement to ensure condition is always true
        assert(_x > 0);

        return _x;
    }

    // Function to demonstrate revert statement
    function revertOnNegativeAmount(int256 _amount) public pure returns (int256) {
        // Revert if the amount is negative
        require(_amount >= 0, "Amount cannot be negative");
        return _amount;
    }

    // Function to demonstrate require statement with assert
    function requireWithAssert(uint256 _value) public pure returns (uint256) {
        // Require statement with assert condition
        require(_value != 0, "Value cannot be zero");
        assert(_value > 0);

        return _value;
    }
}
