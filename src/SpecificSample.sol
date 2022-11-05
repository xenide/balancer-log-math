pragma solidity 0.8.13; 

import "./interfaces/ISpecificSample.sol";

contract SpecificSample is ISpecificSample {
    function getX() external returns (uint256) {
        return type(uint256).max;
    }

    function getY() external returns (uint256) {
        return 0;
    }
}


