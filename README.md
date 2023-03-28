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

Once the hash key for a certificate has been validated using the validateCertificateHash function of the University Certificate Issuing Smart Contract, the next step is to create an NFT for the certificate. This can be done using a separate smart contract specifically designed for NFT creation.

The NFT Creation Smart Contract will take the validated hash key for the certificate as a parameter, and use it to create a unique NFT for that certificate. This NFT can then be stored on the blockchain, and can be used to verify the authenticity of the certificate.

To create the NFT, the NFT Creation Smart Contract will typically use a library such as OpenZeppelin, which provides a set of pre-built NFT contracts that can be easily customized for specific use cases.

Once the NFT has been created, it can be assigned to the owner of the certificate (i.e. the student who received the certificate), and can be used to prove the authenticity of the certificate in the future. The NFT can be transferred from the owner to other parties as needed, and can be used to verify the authenticity of the certificate at any time.

Overall, the use of NFTs in this project provides an additional layer of security and authenticity to the certificates issued by the university. By combining the unique hash key for each certificate with an NFT, the university can ensure that its certificates cannot be forged or duplicated, and can be easily verified by anyone with access to the blockchain.

Here are some of the key functions and arguments for the NFT Smart Contract:

### createNFT
This function is used to create a new NFT for a certificate. The function takes the following parameters:

Certificate Hash: The validated hash key for the certificate
Owner: The address of the account that will initially own the NFT
Metadata URI: A URI that points to a JSON file containing metadata for the NFT
The function creates a new NFT with a unique ID, assigns it to the specified owner, and sets the metadata for the NFT using the provided URI.

### getNFTMetadata
This function is used to retrieve the metadata for a specific NFT. The function takes the following parameters:

NFT ID: The ID of the NFT for which metadata is being retrieved
The function returns the metadata for the specified NFT, as a URI pointing to a JSON file.

###  burnNFT
This function is used to permanently destroy an NFT. The function takes the following parameters:

NFT ID: The ID of the NFT being burned
The function permanently destroys the specified NFT, removing it from the blockchain.

Overall, these functions and arguments provide the necessary tools for creating, managing, and verifying NFTs for the certificates issued by the University Certificate Issuing Smart Contract. By combining the unique hash keys for each certificate with NFTs, the university can ensure that its certificates are authentic and secure, and can be easily verified by anyone with access to the blockchain.

# Conclusion
The University Certificate Issuing Smart Contract is a powerful tool for universities looking to issue certificates on the blockchain. By giving each certificate a unique hash key, and using it to create an NFT, universities can ensure that their certificates are authentic and secure.
