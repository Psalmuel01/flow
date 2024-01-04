import CryptoPoops from "../contracts/CryptoPoops.cdc"
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"

pub fun main() {
 // read totalSupply from CryptoPoops
 let poops = CryptoPoops.at("0x560a5d100de7ca8d")
 let totalSupply = poops.totalSupply()
  log(totalSupply)
}
