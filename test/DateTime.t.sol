
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "src/lib/TimeLib.sol";

contract DateTimeTest is Test 
{

    function testToHours() external 
    {
        uint256 res = DateTimeChallenge.toHours(10);
        console.log(res);
    }

    function testToSeconds() external
    {
        uint256 res = DateTimeChallenge.toSeconds(195);
        console.log(res);
    }

    function testHaha() external
    {
        uint8 x = 5;

        console.log(5 ** 10);
    }
}