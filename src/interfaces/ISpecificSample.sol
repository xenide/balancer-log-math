pragma solidity ^0.8.0;

import "./ISample.sol";

interface ISpecificSample is ISample {
    function getY() external returns (uint256);

}