pragma solidity ^0.4.20;

contract DeedIt {

    uint256 public numberOfDeeds;

    mapping(uint256 => Deed) public deeds; //essentially a dictionary (index will give info of that Deed)

    struct Deed {
        string name;
        address creator;
        string description;
        string imageHash; //store image in another place & reference here
        string status; //created, selected, finished
    }

    function registerDeed(string name, string description, string imageHash) public returns(bool result) {
        numberOfDeeds++;

        deeds[numberOfDeeds] = Deed(name, msg.sender, description, imageHash, "Created");
        //msg.sender is address of person who made code for contract coming from outside (the "Account")
        result = true;
        return result;
    }

}
