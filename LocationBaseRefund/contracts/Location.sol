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
        string raduis;
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
        string memory duration,
        stind radius
    ) public {
        require(msg.sender == employer);
        employeeDevice[_address].publicKey = publicKey;
        employeeDevice[_address].latitude = latitude;
        employeeDevice[_address].longitude = longitude;
        employeeDevice[_address].duration = duration;
        employeeDevice[_address].radius = radius;
        employees.push(_address);
    }

    function getEmployees() public view returns (address[] memory) {
        return employees;
    }

    function getEmployeeDevice(address _address) public view
        returns (
            string memory,
            uint256,
            uint256,
            string memory
        )
    {
        return (
            employeeDevice[_address].publicKey,
            employeeDevice[_address].latitude,
            employeeDevice[_address].longitude,
            employeeDevice[_address].duration,
            employeeDevice[_address].radius
    
        );
    }

    // function getEmployer() public view returns(stateType memory) {
    //     return state;

    // }
 function sqrt(uint256 input) private pure returns (uint256 output) {
        uint256 interim = (input + 1) / 2;
        output = input;
        while (interim < output) {
            output = interim;
            interim = (input / output * 2) / 2;
        }
    }
    function calculate_radius(
        uint256 latitude,
        uint256 longitude,
        address _address
    ) private view returns (uint256) {
        uint256 radius = 0;
        uint256 x = latitude - employeeDevice[_address].latitude;
        uint256 y = longitude - employeeDevice[_address].latitude;
        radius = sqrt(x**2 + y**2);
        return radius;
    }

    function check_position(int256 lat, int256 lon) public {
        uint256 new_radius = calculate_radius(latitude,  longitude, msg.sender);
        if (new_radius < employeeDevice[msg.sender].radius) {
            employeeDevice[msg.sender].status = true;
        } else {
            employeeDevice[msg.sender].status = false;
        }
    }
}
