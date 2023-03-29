pragma solidity ^0.8.0;

contract UniversityCertificate {
    
    struct Certificate {
        uint256 studentId;
        uint256 courseId;
        uint256 certificateId;
    }
    
    mapping (address => Certificate[]) certificates;
    
    function generateId() private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender)));
    }
    
    function issueCertificate(uint256 _studentId, uint256 _courseId) public returns (uint256) {
        uint256 certificateId = generateId() % 100000000000000000000; // limit ID to 20 digits
        Certificate memory newCertificate = Certificate(_studentId, _courseId,  certificateId);
        certificates[msg.sender].push(newCertificate);
        return certificateId;
    }
    
    function getCertificate(address _address, uint256 _index) public returns (uint256 studentId, uint256 courseId,uint256 certificateId) {
        Certificate storage certificate = certificates[_address][_index];
        studentId = certificate.studentId;
        courseId = certificate.courseId;
        certificateId = certificate.certificateId;
    }
}
