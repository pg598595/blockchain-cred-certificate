// SPDX-License-Identifier: MIT

const UniversityCertificate = artifacts.require("UniversityCertificate");
const UniversityCertificateNFT = artifacts.require("UniversityCertificateNFT");

contract("University Certificate Issuing and NFT Contracts", accounts => {

    const sampleCertificateHash = "0x1234567890abcdef";

    it("should issue a certificate", async () => {
        const certificate = await UniversityCertificate.deployed();
        const issued = await certificate.issueCertificate("John Doe", "Computer Science", 2022, sampleCertificateHash);
        assert.isTrue(issued, "Certificate not issued");
    });

    it("should retrieve a certificate", async () => {
        const certificate = await UniversityCertificate.deployed();
        const certificateDetails = await certificate.getCertificate(sampleCertificateHash);
        assert.equal(certificateDetails.studentName, "John Doe", "Student name incorrect");
        assert.equal(certificateDetails.courseName, "Computer Science", "Course name incorrect");
        assert.equal(certificateDetails.dateOfCompletion.toNumber(), 2022, "Date of completion incorrect");
        assert.equal(certificateDetails.certificateHash, sampleCertificateHash, "Certificate hash incorrect");
    });

    it("should create an NFT", async () => {
        const nft = await UniversityCertificateNFT.deployed();
        await nft.createNFT(sampleCertificateHash, accounts[0], "https://myapi.com/nft/metadata/1");
        const tokenId = await nft.getTokenId(sampleCertificateHash);
        assert.equal(await nft.ownerOf(tokenId), accounts[0], "NFT owner incorrect");
        assert.equal(await nft.getNFTMetadata(tokenId), "https://myapi.com/nft/metadata/1", "NFT metadata URI incorrect");
    });

    it("should burn an NFT", async () => {
        const nft = await UniversityCertificateNFT.deployed();
        const tokenId = await nft.getTokenId(sampleCertificateHash);
        await nft.burnNFT(tokenId);
        assert.isFalse(await nft.exists(tokenId), "NFT still exists after burning");
    });

});