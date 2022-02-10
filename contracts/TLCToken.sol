// contracts/TLCToken.sol
// SPDX-License-Identifier: MIT

/* 
  _                       _____      _       
 | |                     / ____|    (_)      
 | |     _____   _____  | |     ___  _ _ __  
 | |    / _ \ \ / / _ \ | |    / _ \| | '_ \ 
 | |___| (_) \ V /  __/ | |___| (_) | | | | |
 |______\___/ \_/ \___|  \_____\___/|_|_| |_|


 The Coin powered by love with an intial supply of 
 10 Billion.  
 
                                          
 */

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TLCToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Love Coin", "TLC") {
        _mint(msg.sender, initialSupply);
    }
}

contract MyContract is Ownable {
    function everyoneCanDo() public {
        // anyone can call this normalThing()
    }

    function onlyICanDo() public onlyOwner {
        // only the owner can call specialThing()!
    }
}