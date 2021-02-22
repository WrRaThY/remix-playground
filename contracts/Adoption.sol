pragma solidity >=0.4.22 <0.9.0;

contract Adoption {
    address[16] public adopters;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
