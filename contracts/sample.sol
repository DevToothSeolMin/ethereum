pragma solidity >=0.4.22;

contract Sample {
    uint num = 0;

    function addNum(uint _num) public {
        num = num + _num;
    }

    function getNum() public view returns (uint){
        return num;
    }
}
