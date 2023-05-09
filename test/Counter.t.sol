// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "src/LogCompression.sol";
import "src/StableOracleMath.sol";

contract CounterTest is Test {

    function setUp() public {

    }
    function testToLowResLog() public view {
        // uint amount = 3000120398120398120;
        int256 amount = type(int256).max + 1;
        int256 res = LogCompression.toLowResLog(uint256(amount));

        console.logInt(res);
    }

    function testFromLowResLog() public view {
        int logAmount = 1310000;

        uint256 res = LogCompression.fromLowResLog(logAmount);
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
        uint256 lSpotPrice = StableOracleMath._calcSpotPrice(1000, 2e15, 2e10);
    }

    function testInt256Min() public {

        // uint256 n = type(uint256).max;
        // uint256 imax = uint256(type(int256).min);
        // int256 ni = int256(imax);

        int256 normal = type(int256).min;
        int256 max = type(int256).max;

        -normal;

        console.logInt(normal);
        console.logInt(max);
    }

    function testCastInt256IntoUint256Unchecked() public {
        int256 lMax = type(int256).max;

        console.logInt(lMax);


        uint256 lAbs;
        unchecked {
            lAbs = uint256(lMax);
        }
        console.log(lAbs);
    }
}
