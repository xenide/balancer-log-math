// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "forge-std/Test.sol";

import "src/LogCompression.sol";
import "src/StableOracleMath.sol";

contract CounterTest is Test {

    function setUp() public {

    }
    
    function testLowResLog() public view {
        // uint amount = 3000120398120398120;
        uint amount = 1e6;
        int256 res = LogCompression.toLowResLog(amount);
        console.logInt(res);
        console2.logUint(uint256(res));
    }

    function testFromLowResLog() public view {
        int logAmount = -30291;

        uint256 res = LogCompression.fromLowResLog(logAmount);

        console2.log(res);
        console2.log(res/1e18);
    }

    function testRollTime() public 
    {
        for (uint i = 0; i < 20; ++i) {
            console.log(block.number);
            console.log(block.timestamp);
            vm.roll(block.number + 1);
            vm.warp(block.timestamp + 5);
        }
    }

    function testCalcSpotPrice() public {
        (int256 lLogSpotPrice, int256 lLogBptPrice) = StableOracleMath._calcLogPrices(1000, 1e18, 1e18, 2e18);

        console.logInt(lLogSpotPrice);
    }
}
