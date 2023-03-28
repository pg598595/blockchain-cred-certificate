# University Certificate Issuing Smart Contract

This smart contract is designed to issue certificates on the blockchain, and give each certificate a unique hash key. This key can be used to create a Non-Fungible Token (NFT) for the certificate, which can be used to verify its authenticity.

# How it works
The University Certificate Issuing Smart Contract is designed to issue certificates to students who have completed certain requirements set by the university. Once a student has completed these requirements, the university will create a certificate for them using the smart contract.

The certificate will be given a unique hash key, which will be stored on the blockchain. This key can then be used to create an NFT for the certificate. This NFT can be used to verify the authenticity of the certificate.

# Functions
The University Certificate Issuing Smart Contract has the following functions:

### issueCertificate
This function is used by the university to issue a certificate to a student. The function takes the following parameters:

Student ID: The ID of the student who is receiving the certificate
Certificate Name: The name of the certificate being issued
Issuer Name: The name of the institution issuing the certificate
Issue Date: The date the certificate is being issued
The function creates a unique hash key for the certificate, and stores it on the blockchain.

### getCertificateHash
This function is used to get the hash key for a certificate. The function takes the following parameters:

Student ID: The ID of the student who received the certificate
Certificate Name: The name of the certificate
The function returns the hash key for the certificate.

### validateCertificateHash
This function is used to validate the hash key for a certificate. The function takes the following parameters:

Certificate Hash: The hash key for the certificate
Student ID: The ID of the student who received the certificate
Certificate Name: The name of the certificate
The function returns true if the hash key is valid, and false otherwise.

# NFT Creation Smart Contract
Once the hash key for a certificate has been validated, it can be used to create an NFT for the certificate. This can be done using a separate smart contract designed specifically for NFT creation.

The NFT Creation Smart Contract takes the hash key for the certificate as a parameter, and uses it to create an NFT. The NFT can then be used to verify the authenticity of the certificate.

# Conclusion
The University Certificate Issuing Smart Contract is a powerful tool for universities looking to issue certificates on the blockchain. By giving each certificate a unique hash key, and using it to create an NFT, universities can ensure that their certificates are authentic and secure.
