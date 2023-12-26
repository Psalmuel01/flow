import Identity from 0x06

pub fun main(account: Address): Identity.UserProfile {
    return Identity.userProfiles[account]!
}
