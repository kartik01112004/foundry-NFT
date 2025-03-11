//SPDX-License-Identifier: MI
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokenCounder;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Dogie", "Dog") {
        s_tokenCounder = 0;
    }

    function mintNFT(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounder] = tokenUri;
        _safeMint(msg.sender, s_tokenCounder);
        s_tokenCounder++;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}
