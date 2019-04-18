# Courses by [Coursetro](https://coursetro.com/)- Updating to Soildity 5.0 
Following and updating the Solidity Mappings & Structs Tutorial by [Coursetro](https://coursetro.com/posts/code/102/Solidity-Mappings-&-Structs-Tutorial)

* updated by `Gregory Woodcox`

# Requirments:
  -Supports
   * Linux 
   * Windows
   * MacOS

# Tools: 
 * truffle

# Install:
### Git
* `git clone https://github.com/GWoodz/Courses.git`
### Zip
* `wget -c https://github.com/GWoodz/Courses.git \ && unzip Courses\ && rm -f Courses`


# Running Program:
* Open terminal
* `cd Courses`
* `sudo truffle compile`
* `sudo truffle migrate --reset`

 

# Update Solutions:
* Line 20, the `Courses constructor()` can not have the same name as the contract and  was changed to `constructor()`
* Line 25, `string _fName` & `string  _lName` has been changed to `string memory _fName` & `string memory _lName `
* Line 29,  `var instructor = instructor[_address];` was deleted becasue `var` is disallowed in Solidity 5.0 and higher 
* Line 45, Once again add `memory` after every `string` in the function parameters `string memory _fName` & `string memory _lName`
 
# Truffle Debugging
### In terminal**
* `cd Coruses`
* `sudo truffle develop` 

 * Testing **setInstructor**
 
    `Courses.deployed().then(function(instance){return instance.setInstructor("0x52032b347709949c595c19992438b3f7c0a6ce41", 42, "Bill", "Gates");})`
<img src =ScreenshotFirst.png>

* Testing **getInstructor**

   `Courses.deployed().then(function(instance){return instance.getInstructor("0x52032b347709949c595c19992438b3f7c0a6ce41");})`
<img src =ScreenshotSecond.png>

* Testing **getInstructors**

  `Courses.deployed().then(function(instance){return instance.getInstructors();})`
  
<img src =ScreenshotThird.png>

* Testing **countInstructors**

  `Courses.deployed().then(function(instance){return instance.countInstructor();})`
<img src =ScreenshotLast.png>
