// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TokenContract {
    mapping(address => uint256) public balances;

    // Event to emit when balance changes
    event BalanceChanged(address indexed user, uint256 newBalance);

    // Function to deposit tokens
    function depositTokens(uint256 _amount) public {
        // Require the deposit amount to be greater than 0
        require(_amount > 0, "Deposit amount must be greater than 0");

        // Increase the sender's balance
        balances[msg.sender] += _amount;

        // Emit event for balance change
        emit BalanceChanged(msg.sender, balances[msg.sender]);
    }

    // Function to withdraw tokens
    function withdrawTokens(uint256 _amount) public {
        // Require the withdrawal amount to be greater than 100
        require(_amount > 100, "Withdrawal amount must be greater than 100");

        // Require the sender to have enough balance
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        // Decrease the sender's balance
        balances[msg.sender] -= _amount;

        // Emit event for balance change
        emit BalanceChanged(msg.sender, balances[msg.sender]);
    }

    // Function to demonstrate assert statement
    function assertExample(uint256 _x) public pure returns (uint256) {
        // Assert statement to ensure _x is not zero
        assert(_x != 0);
        return _x;
    }

    // Function to demonstrate revert statement
    function revertExample(int256 _amount) public pure returns (int256) {
        // Revert if the amount is negative
        if (_amount < 0) {
            revert("Amount cannot be negative. Amount be greater than 0.");
        }
        return _amount;
    }
}
