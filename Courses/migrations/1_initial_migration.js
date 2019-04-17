const Migrations = artifacts.require("./Migrations");
const Courses = artifacts.require("./Courses.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Courses);
};
