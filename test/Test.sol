// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../contracts/UniversityCertificate.sol";
import "../contracts/UniversityCertificateNFT.sol";

contract TestUniversityCertificate {
    
    bytes32 constant sampleCertificateHash = 0x1234567890abcdef;
    
    function testIssueCertificate() public {
        UniversityCertificate certificate = UniversityCertificate(DeployedAddresses.UniversityCertificate());
        bool issued = certificate.issueCertificate("Priyanka Gupta", "Computer Science", 2022, sampleCertificateHash);
        Assert.isTrue(issued, "Certificate not issued");
    }
    
    function testGetCertificate() public {
        UniversityCertificate certificate = UniversityCertificate(DeployedAddresses.UniversityCertificate());
        (string memory studentName, string memory courseName, uint256 dateOfCompletion, bytes32 certificateHash) = certificate.getCertificate(sampleCertificateHash);
        Assert.equal(studentName, "Priyanka Gupta", "Student name incorrect");
        Assert.equal(courseName, "Computer Science", "Course name incorrect");
        Assert.equal(dateOfCompletion, 2022, "Date of completion incorrect");
        Assert.equal(certificateHash, sampleCertificateHash, "Certificate hash incorrect");
    }
    
    function testCreateNFT() public {
        UniversityCertificateNFT nft = UniversityCertificateNFT(DeployedAddresses.UniversityCertificateNFT());
        nft.createNFT(sampleCertificateHash, address(this), "https://myapi.com/nft/metadata/1");
        uint256 tokenId = uint256(sampleCertificateHash);
        Assert.equal(nft.ownerOf(tokenId), address(this), "NFT owner incorrect");
        Assert.equal(nft.getNFTMetadata(tokenId), "https://myapi.com/nft/metadata/1", "NFT metadata URI incorrect");
    }
    
    function testBurnNFT() public {
        UniversityCertificateNFT nft = UniversityCertificateNFT(DeployedAddresses.UniversityCertificateNFT());
        uint256 tokenId = uint256(sampleCertificateHash);
        nft.burnNFT(tokenId);
        bool exists = nft._exists(tokenId);
        Assert.isFalse(exists, "NFT still exists after burning");
    }
    
}