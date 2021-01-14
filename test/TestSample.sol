pragma solidity >=0.4.22;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/sample.sol";

contract TestSample {
    function testSample() public {
            Sample sampleContract = new Sample();

            Assert.equal(sampleContract.getNum(), 0, "Get Num : 0");

            sampleContract.addNum(3);

            Assert.equal(sampleContract.getNum(), 3, "Get Num : 3");
    }
}
