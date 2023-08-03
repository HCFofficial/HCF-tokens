// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Blacklist is Ownable {

    mapping(address => bool) internal blacklist;

    function addToBlacklist(address user) external onlyOwner {
        require(blacklist[user] == false, "The user is already blacklisted");
        blacklist[user] = true;
    }

    function removeFromBlacklist(address user) external onlyOwner {
        require(blacklist[user] == true, "The user is not blacklisted");
        blacklist[user] = false;
    }

    function checkBlacklist(address user) external view returns (bool) {
        return blacklist[user];
    }
}