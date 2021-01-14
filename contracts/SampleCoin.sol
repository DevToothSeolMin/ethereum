pragma solidity >=0.4.0 <0.6.0;

contract SampleCoin {
    address public minter;
    mapping (address => uint) public balances;

    constructor() public {
        minter = msg.sender;
    }

    function mint(uint _amount) public {
        require(msg.sender == minter);
        require(_amount < 1e60);
        balances[msg.sender] += _amount;
    }

    function get() public view returns (uint) {
        return balances[msg.sender];
    }
}
