pragma solidity ^0.7.6;

// contract A{
//     function foo() public pure returns (string memory ){
//         return "A";
//     }
// }

// contract B{
//     function foo() public pure returns (string memory){
//         return "B";
//     }
// }

// contract C is A {
    
// }

contract A{
    event Log(string message);
    
    function foo() virtual public {
        emit Log("A. foo was called!");
        
    }
}

contract B is A {
    function foo() public override {
        emit Log("B.foo called");
        A.foo();
    }
}

contract C is A,B{
    function foo() public override(A,B) {
        emit Log("C.foo called");
    }
}

//super keywork to call parnet function
//suer.foo();
// contract D is B,C{
    
// }









