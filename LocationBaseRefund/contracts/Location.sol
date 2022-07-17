// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Location {
    // List of states
    enum stateType {
        inRange,
        outOffRange,
        jobComplete
    }
    struct EmployeeDevice {
        string publicKey;
        uint256 latitude;
        uint256 longitude;
        string duration;
    }

    //List of properties
    mapping(address => EmployeeDevice) employeeDevice;
    stateType public state;
    address public employer;
    address[] public employees;


    constructor() {
        employer = msg.sender;
        console.log("Deploying contract...");
    }

    function getEmployer() public view returns (address) {
        return employer;
    }

    function setEmployee(
        address _address,
        string memory publicKey,
        uint256 latitude,
        uint256 longitude,
        string memory duration
    ) public {
        require(msg.sender == employer);
        employeeDevice[_address].publicKey = publicKey;
        employeeDevice[_address].latitude = latitude;
        employeeDevice[_address].longitude = longitude;
        employeeDevice[_address].duration = duration;
        employees.push(_address);
    }

    function getEmployees() public view returns (address[] memory) {
        return employees;
    }
    
     function getEmployeeDevice(address _address) public view returns (string memory, uint256, uint256, string memory) {
        return (employeeDevice[_address].publicKey, employeeDevice[_address].latitude, employeeDevice[_address].longitude, employeeDevice[_address].duration);
    }
    
    // function getEmployer() public view returns(stateType memory) {
    //     return state;

    // }

    // function calcDistance() publice view (){

    // }
    
}
