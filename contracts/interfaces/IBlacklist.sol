// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

interface IBlacklist {
    function checkBlacklist(address user) external view returns (bool);
}
