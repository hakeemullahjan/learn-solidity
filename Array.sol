pragma solidity ^0.8.1;

contract Array{
    uint[] public myArray;
    uint[] public myArray2=[1,3,4,5,6,7,8];
    uint[10] public fixedArr;
    
    
    function push(uint n) public{
        myArray.push(n);
    }
    
    function pop() public {
        myArray.pop();
    }
    
    function getLength() public view returns (uint){
        return myArray.length;
    }
    
}


contract compactArray{
    uint[] public myArray;
    
    function remove(uint index) public{
        myArray[index] = myArray[myArray.length-1];
        myArray.pop();
    }
    
    function test() public{
        myArray.push(1);
        myArray.push(2);
        myArray.push(3);
        myArray.push(4);
        //[1,2,3,4]
        
        remove(1);
        
        //[1,4,3]
        assert(myArray.length == 3);
        assert(myArray[0]==1);
        assert(myArray[1]==4);
        assert(myArray[2]==3);
        
        
        remove(2);
        //[1,4]
        
        assert(myArray.length == 2);
        assert(myArray[0]==1);
        assert(myArray[1]==4);
        
        
        
        
        
        
    }
    
}
