import Identity from 0x06

transaction(displayName: String, bio: String, birthdate: String, walletAddress: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Identity.createUserProfile(displayName: displayName, bio: bio, birthdate: birthdate, walletAddress: walletAddress)
        log("We're done.")
    }
}
