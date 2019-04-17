pragma solidity ^0.5.0;


contract Courses {

  struct Instructor {
    uint age;
    string fName;
    string lName;
  }

  // Connecting to struct
  mapping (address => Instructor) instructors;


  // Address to accounts
  address[] public instructorAccts;


  constructor() public {

  }


    // Add new instructor
    function setInstructor(address _address, uint _age, string memory _fName, string memory _lName) public {

      // In 5.0 and higher the use of 'var' is disallowed
      //var instructor = instructors[_address];

        instructors[_address].age = _age;
        instructors[_address].fName = _fName;
        instructors[_address].lName = _lName;

        instructorAccts.push(_address) -1;

    }

    // Returns list of addresses
    function getInstructors() view public returns (address[] memory) {
       return instructorAccts;
   }

   // Instructor account look-up
   function getInstructor(address ins) view public returns (uint, string memory, string memory) {
        return (instructors[ins].age, instructors[ins].fName, instructors[ins].lName);
    }

    // Count how many accounts
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }

  }
