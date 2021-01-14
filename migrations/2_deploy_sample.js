var SampleCoin = artifacts.require("SampleCoin");

module.exports = function(deployer) {
  deployer.deploy(SampleCoin);
};
