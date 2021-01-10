pragma solidity ^0.5.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm {		
	string public name = "Dapp Token Farm";
	address public owner;
	DappToken public dappToken;
	DaiToken public daiToken;	

	address[] public stakers;
	mapping(address => uint) public stakingBalance;
	mapping(address => bool) public hasStaked;
	mapping(address => bool) public isStaking;

	constructor(DappToken _dappToken, DaiToken _daiToken) public {
		dappToken = _dappToken;
		daiToken = _daiToken;
		owner = msg.sender;
	}

	// 1. Stakes Tokens (Deposit): An investor will deposit the DAI into the smart contracts to starting earning rewards
	function stakeTokens(uint _amount) public {		
		// core thing: transfer the DAI tokens from the investor's wallet to this smart contract...

		// Transfer Mock DAI tokens to this contract for staking
		daiToken.transferFrom(msg.sender, address(this), _amount);

		// Update staking balance
		stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;		

		// Add user to stakers array *only* if they haven't staked already
		if(!hasStaked[msg.sender]) {
			stakers.push(msg.sender);
		}

		// update stakng status
		isStaking[msg.sender] = true;
		hasStaked[msg.sender] = true;

	}

	// Unstaking Tokens (Withdraw): Withdraw money from Dapp
	function unstakeTokens() public {
		// Fetch staking balance
		uint balance = stakingBalance[msg.sender];

		// Require amount greter than 0
		require(balance > 0, "staking balance cannot be 0");

		// Transfer Mock Dai tokens to this contract for staking
		daiToken.transfer(msg.sender, balance);

		// Reset staking balance
		stakingBalance[msg.sender] = 0;

		// Update staking status
		isStaking[msg.sender] = false;
	}


	// Issuing Tokens: Earning interest (issuing tokens for people who stake them, distribute dap tokens as interes and also allow the investor to unstake their tokens from the app, give them intereset using the app)
	function issueTokens() public {
		// Only owner can call this function
		require(msg.sender == owner, "caller must be the owner");

		// Issue tokens to all stakers
		for (uint i=0; i<stakers.length; i++) {
			address recipient = stakers[i];
			uint balance = stakingBalance[recipient];
			if(balance > 0) {
				dappToken.transfer(recipient, balance);
			}			
		}
	}


}