# ETH-AVAX-MODULE-4
## Project: Degen Token (ERC-20) ##
This Solidity contract implements a basic ERC20 token named DegenToken. It also includes additional functionalities for redeeming items, setting item prices, and listing available items.

## OverView ##
The contract extends the ERC20 and Ownable contracts from the OpenZeppelin library.


## Functions of the Code ##
mint: Allows the owner to mint new tokens and distribute them to a specified address.
burn: Allows users to burn their own tokens.
redeem: Allows users to redeem an item by providing the item name and paying the corresponding price in tokens.
transferCoin: Allows users to transfer tokens to another address.
getUserItem: Retrieves the item owned by a specific user.
Balancecheck: To check the final balance.

## Process 
* Using Remix Ide.
* Vanity-eth for transfering 
*Snowtrace testnet for see the transcations 


## Implementation ##
*Deploy the contract.
*Use a wallet or script to interact with the contract's functions. (Metamask)

## Example ##
Tier-List


   constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    function Mintable(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
// For redeem 
  
    function For_Redeem(uint to_redeem) public returns(string memory) {
    require(balanceOf(msg.sender) >= 20);
    if(balanceOf(msg.sender) >= 50 && to_redeem == 45){
        _burn(msg.sender, 50);
        return tier_list[0];
    }
    else if(balanceOf(msg.sender) >= 55 && to_redeem == 59){
        _burn(msg.sender, 55);
        return tier_list[1];
    }
    else if(balanceOf(msg.sender) >= 99 && to_redeem == 65){
        _burn(msg.sender,99);
        return tier_list[2];
    }
    else {
        return "Not Found ";
    }
} 

## Author ##
TARUN BANKAR 

## License ##
This project is licensed under the [MIT] License - see the LICENSE.md file for details
