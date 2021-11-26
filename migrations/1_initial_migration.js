const Team = artifacts.require("Team");

module.exports = function (deployer) {
  deployer.deploy(Team);
};
