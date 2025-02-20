function balanceOf(address account) public view returns (uint256) {
        if (balances[account] == 0 && !accountExists[account]) { //Check if the account exists, and balance is zero.
            return 0; // Return 0 if the account doesn't exist.
        } else {
            return balances[account];
        }
    }
    mapping (address => bool) accountExists; //New mapping to keep track of accounts.