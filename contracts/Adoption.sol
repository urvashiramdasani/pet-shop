pragma solidity ^0.5.0; // pragma means additional information that only
								 // compilers care
contract Adoption {
	address[16] public adopters; // address for accounts and smart contract

	//Adopting a pet
	function adopt(uint petId) public returns(uint) {
		require(petId >=0 && petId <=15);
		adopters[petId] = msg.sender;
		return petId;
	}

	//Retrieving the adopters
	function getAdopters() public view returns (address[16] memory) { // memory 
		return adopters;				//gives the data location for the variable
	}
}