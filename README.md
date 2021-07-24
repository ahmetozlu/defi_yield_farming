# DeFi Yield Farming

This project focuses on developing a DeFi app which implements the concept of yield farming / liquidity mining based Dai token.

<p align="center">
  <img src="https://user-images.githubusercontent.com/22610163/104134982-2b389a00-539e-11eb-9ac7-642dbe48ec4d.gif">
</p>

Demo of the DApp with the screenshots can be found on [this wiki page](https://github.com/ahmetozlu/defi_yield_farming/wiki/Demo-of-the-DApp).

---
This repository presents practices about:
- Setup a blockchain.
- Develop Ethereum smart contracts.
- Write tests for the developed Ethereum smart contracts. 
- Develop a client-side website so people can actually use this application.
---

You can check the quick tutorial about "what is the blockchain?" in [here](https://ahmetozlu93.medium.com/blockchain-in-a-nutshell-8ad72743971e).

---
ToDos:
- Add OpenZeppelin Contracts to minimize risks.
- Develop a new feature to keep track of the rewards.
- Implement a method to withdraw the rewards automatically when certain conditions are met (it is triggered manually in the current version).
---

## Theory

### What is yield farming?

At its core, yield farming is a process that allows cryptocurrency holders to lock up their holdings, which in turn provides them with rewards.

**In brief:**

- Yield farming lets you lock up funds, providing rewards in the process.
- It involves lending out cryptos via DeFi protocols in order to earn fixed or variable interest.
- The rewards can be far greater than traditional investments, but higher rewards bring higher risks, especially in such a volatile market.

<p align="center">
  <img src="https://user-images.githubusercontent.com/22610163/118402446-91963780-b672-11eb-9574-12e19fb789f9.png" | width=720>
</p>

## Application Software Architecture

<p align="center">
  <img src="https://user-images.githubusercontent.com/22610163/104122166-729a3880-5354-11eb-9088-5123e47990d2.png" | width=720>
</p>

Here is the application software architecture work-flow:
- Users use an Internet browser to connect front-end application which is written in HTML, CSS and JavaScript. 
- Then, instead of accessing a back-end server, the website talks directly to the blockchain which is where all the codes and data for the application lives. 
- The DeFi application codes are contained in smart contracts written in solidity progrramming language which was a lot like JavaScript. These smart contracts are immutable which means the code can not change and all the data is stored in the public ledger which is also immutable. And, anytime new data is added to the blockchain, it will be permanent and publicly verifiable.

## Installation

### Setup

- **Node.js**

      sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
      nvm install 12.18.3
      node -v

- **Truffle**

      sudo npm install -g truffle@5.1.39 --unsafe-perm=true

- **Ganache** installation guide can be found in [here](https://www.trufflesuite.com/ganache).

- **MetaMask** installation guide can be found in [here](https://metamask.io/).

### Commands

- Install necessarily Node.js packages

      npm install

- Deploy smart contracts to the Ethereum blockchain

      truffle migrate --reset
      
- Deploy and run the front-end application

      npm start run
      
- Run the scripts to issue tokens

      truffle exec scripts/issue-tokens.js

Demo of the DApp with the screenshots can be found on [this wiki page](https://github.com/ahmetozlu/defi_yield_farming/wiki/Demo-of-the-DApp).

## Citation
If you use this code for your publications, please cite it as:

    @ONLINE{
        author = "Ahmet Özlü",
        title  = "DeFi Yield Farming App",
        year   = "2021",
        url    = "https://github.com/ahmetozlu/defi_yield_farming"
    }

## References
This project was built on top of **Dapp University** implementation, [here](https://github.com/dappuniversity/defi_tutorial) you can find more details.

## Author
Ahmet Özlü

## License
This system is available under the MIT license. See the LICENSE file for more info.

