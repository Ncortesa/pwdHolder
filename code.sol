pragma solidity ^0.4.18;
contract PasswordHolder {
    //Declarations
    address public onwerContract;
    string password; // password repository


     function  PasswordHolder() { //constructor
        onwerContract=msg.sender;  //Defines a variable to hold the address of the owner
        }

     modifier ownerOnly() {  //Enables the only gatekepper
         require(onwerContract==msg.sender);
         _;
    }

    function setPassword(string _pwd) ownerOnly { //Setter of the data (String based)
        password=_pwd;
    }

     function getPassword() public view returns (string) { //Getter of the data (returns a string)
       return password;
    }


}
