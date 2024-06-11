// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SelfToken {
    // Public variables to store token details
    string public mytokenName = "SelfToken";
    string public mytokenAbbrv = "STK";
    uint256 public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the sender address
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease total supply and balance of the sender address
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "The balance is not sufficient to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
