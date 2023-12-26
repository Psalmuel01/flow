pub contract Identity {

    pub var userProfiles: {Address: UserProfile}
    
    pub struct UserProfile {
        pub let displayName: String
        pub let bio: String
        pub let birthdate: String
        pub let walletAddress: Address

        // Initialize with 4 arguments.
        init(_displayName: String, _bio: String, _birthdate: String, _walletAddress: Address) {
            self.displayName = _displayName
            self.bio = _bio
            self.birthdate = _birthdate
            self.walletAddress = _walletAddress
        }
    }

    // Function to add a new user profile.
    pub fun createUserProfile(displayName: String, bio: String, birthdate: String, walletAddress: Address) {
        let newUserProfile = UserProfile(_displayName: displayName, _bio: bio, _birthdate: birthdate, _walletAddress: walletAddress)
        self.userProfiles[walletAddress] = newUserProfile
    }

    // Contract initialization.
    init() {
        self.userProfiles = {}
    }

}
