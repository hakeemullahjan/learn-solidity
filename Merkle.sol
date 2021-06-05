pragma solidity ^0.8.1;


// 3rd leaf
// 0x30da7e4f543210a301ac0982fb94ccd314b797e4bc15ec39eb7466c4e07a5ffa

// root
// 0xdca22b9bececa59109494bf744dc9a1cf7f67cb3f08cc60c29443b7e4ad46fae

// proof
// 0xb4b0ff7c02ba78779e814aaf427af0f43fa5598d0b4c2c520e4bbc2a6fd0d9e4
// 0xc919e0b9dec70ae9fac16af491928806210581a82eca8e25e490ebacee324b68


contract MerkleTree{
    
    function verify(bytes32[] memory proof,bytes32 root, bytes32 leaf, uint index) public pure returns (bool){
        
        bytes32 hash = leaf;
        
        //recompute merkel root
        for(uint i=0; i<proof.length; i++){
            if(index % 2 == 0){
                hash = keccak256(abi.encodePacked(hash, proof[i]));
            } else{
                hash  = keccak256(abi.encodePacked(proof[i],hash));
            }
            
            index = index / 2;
        }
        
        return hash == root;
    }
}