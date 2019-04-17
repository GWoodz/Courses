const Courses = artifacts.require("./Courses.sol");

  it("should assert true", function(done) {
    var courses = Courses.deployed();
    assert.isTrue(true);
    done();
  });
