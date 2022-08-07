// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Fuzzin.sol";

interface CheatCodes {
    function prank(address, address) external;

    // Sets the *next* call's msg.sender to be the input address, and the tx.origin to be the second input
    function prank(address) external;

    // Sets the *next* call's msg.sender to be the input address
    function assume(bool) external;

    // When fuzzing, generate new inputs if conditional not met
    function deal(address who, uint256 newBalance) external;
    // Sets an address' balance
}

contract FuzzTest is Test {
    CheatCodes cheats = CheatCodes(HEVM_ADDRESS);
    Fuzzin fuzzin;

    function setUp() public {
        fuzzin = new Fuzzin();
        
    }

    function testExample() public {
        assertTrue(true);
    }
}
