pragma solidity >=0.4.0 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SampleCoin.sol";

contract TestSample {
    function testSample() public {
            SampleCoin sampleCoinContract = new SampleCoin();

            Assert.equal(sampleCoinContract.get(), 0, "Get Num : 0");

            sampleCoinContract.mint(3);

            Assert.equal(sampleCoinContract.get(), 3, "Get Num : 3");
    }
}
