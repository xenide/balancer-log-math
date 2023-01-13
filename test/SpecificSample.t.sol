// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";

import "src/SpecificSample.sol";

contract SpecificSampleTest is Test {

    SpecificSample internal s = new SpecificSample();

    function setUp() public {

    }

    function testGetX() public {
        uint256 res = s.getX();
    }
}
