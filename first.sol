pragma solidity ^0.4.0;

contract Concert{
    uint public tickets = 10; 
    string word; 
    uint number; 
    address owner; 
    
    
    function Concert() {
        word = "Bird";
        number = 12; 
        owner = msg.sender; 
    }
    
   modifier onlyOwner{
        require(msg.sender == owner);
        _; 
    }
    
    function changeNum() public onlyOwner {
       number = 20;
    }
    
    function getNum() public view returns(uint) {
        return number; 
    }
 
    
    function getTickets() public view returns(uint){
        return tickets; 
    }
    
    function createTicket() public{
        tickets += 1; 
    }
}

 interface Sellable {
        function sell(string item) returns (bool);  
    }