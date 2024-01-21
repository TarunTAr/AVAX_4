// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Redeem_x is ERC20, Ownable {

    string[] public tier_list = ["1.Top Tier ", "2. Medium Tier", "3. Low Tier"];

   constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    function Mintable(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
  
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
  
    function To_Transfer_purpose(address to, uint amount) public {
        require(balanceOf(msg.sender) >= amount, "You should have to mint the tokens to run this functions");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }
    function Check_Balance() public view returns(uint) {
        return balanceOf(msg.sender);
    }
    
}
