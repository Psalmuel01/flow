# Identity Smart Contract

## Overview

This repository contains the source code for an Identity smart contract, designed to manage user profiles on the blockchain. The contract provides functionality for creating and retrieving user profiles.

## Table of Contents

- [Features](#features)
- [Structure](#structure)
- [Transaction Code](#transaction-code)
- [Script Code](#script-code)
- [Usage](#usage)
- [Author](#author)

## Structure

### User Profile

The contract defines a `UserProfile` structure with the following properties:

- `displayName` (String): The display name of the user.
- `bio` (String): A brief biography or description.
- `birthdate` (String): The user's birthdate.
- `walletAddress` (Address): The associated wallet address.

## Features

- **User Profile Creation**: Users can create profiles with a display name, bio, birthdate, and associated wallet address.
- **Profile Retrieval**: Retrieve user profiles based on account addresses.

## Transaction Code

### Create User Profile

```cadence
import Identity from 0x06

transaction(displayName: String, bio: String, birthdate: String, walletAddress: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Identity.createUserProfile(displayName: displayName, bio: bio, birthdate: birthdate, walletAddress: walletAddress)
        log("User profile created successfully.")
    }
}
```

## Script Code

### Create User Profile

```cadence
import Identity from 0x06

pub fun main(account: Address): Identity.UserProfile {
    return Identity.userProfiles[account]!
}

```

## Author

### Samuel Dahunsi
