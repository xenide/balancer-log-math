pragma solidity =0.8.13;
library DateTimeChallenge {
    function toHours(uint8 _days) internal pure returns (uint256) {
        return 24 * _days;
    }
    function toSeconds(uint8 _days) internal pure returns (uint256) {
        return _days * 1 days;
    }
}