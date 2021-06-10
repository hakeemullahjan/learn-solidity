pragma solidity ^0.5.11;

import "./Foo.sol";

contract TestInput{
    Foo foo =  new Foo();
    
    function getFoo() public view returns (string memory){
        return foo.name();
    }
}


//only work with remix
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {}