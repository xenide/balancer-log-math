// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/LogCompression.sol";

contract CounterTest is Test {

    function setUp() public {

    }
    
    function testLowResLog() public view {
        uint amount = 30001203981203981209381;
        int256 res = LogCompression.toLowResLog(amount);
        console.logInt(res);
        console2.logUint(uint256(res));
    }

    function testFromLowResLog() public view {
        int logAmount = 30291;

        uint256 res = LogCompression.fromLowResLog(logAmount);

        console2.log(res);
        console2.log(res/1e18);
    }

}
