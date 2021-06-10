pragma solidity 0.5.11;


contract HashFunction{
    
    function calculateHash(string memory _text, uint _num, address _addr) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_text,_num,_addr));
    }
    
    
    function hash(string memory _text) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_text));
    }
    
    function collision(string memory _text, string memory _anotherText) public pure returns (bytes32){
        
        //AAA BBB = AAABBB
        //AA ABBB = AAABBB
        // return keccak256(abi.encodePacked(_text,_anotherText));
         return keccak256(abi.encode(_text,_anotherText));
    }
    
    
}

contract GuessTHeMagicWord{
    bytes32 public answer = 0x06b3dfaec148fb1bb2b066f10ec285e7c9bf402ab32aa78a5d38e34566810cd2 ;
    
    function guess(string memory _word) public view returns (bool){
        return keccak256(abi.encodePacked(_word)) == answer;
    }
}