pragma solidity 0.8.13; 

import "./ISample.sol";

interface ISpecificSample is ISample {
    function getY() external returns (uint256);

}