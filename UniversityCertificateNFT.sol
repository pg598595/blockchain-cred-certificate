// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract UniversityCertificateNFT is ERC721 {
    
    struct Certificate {
        string studentName;
        string courseName;
        uint256 dateOfCompletion;
    }
    
    mapping(bytes32 => Certificate) certificates;
    
    constructor() ERC721("University Certificate NFT", "UCNFT") {}
    
    function createNFT(bytes32 _certificateHash, address _owner, string memory _metadataURI) public {
        require(certificates[_certificateHash].dateOfCompletion > 0, "Certificate does not exist");
        uint256 tokenId = uint256(_certificateHash);
        _mint(_owner, tokenId);
    }
    
    function getNFTMetadata(uint256 _tokenId) public view returns (string memory) {
        require(_exists(_tokenId), "Token does not exist");
        return tokenURI(_tokenId);
    }
    
    function burnNFT(uint256 _tokenId) public {
        require(_isApprovedOrOwner(_msgSender(), _tokenId), "Not approved or owner");
        _burn(_tokenId);
    }
    
}