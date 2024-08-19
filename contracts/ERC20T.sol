// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20T is ERC20 {
    constructor() ERC20("ERC20T", "ERC20") {
        mint();
    }

     function mint() public {
        _mint(msg.sender,10000);
    }
}