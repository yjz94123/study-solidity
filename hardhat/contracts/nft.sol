// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract NFT is ERC721 {
    constructor() ERC721("NFT", "NFT") {}

    uint256 private tokenId=0;


    function mint(address to) public returns (uint256) {
        tokenId++;
        _safeMint(to, tokenId);
        return tokenId;
    }
}
