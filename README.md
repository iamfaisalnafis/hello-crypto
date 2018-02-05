# Hello Crypto


The "Hello World" of blockchain and cryptogames! (ノ ˘_˘)ノ 。゜。ﾟ

Live demo here: <https://polats.github.io/hello-crypto>

## Quickstart

To just run the project, install [Node and NPM](https://nodejs.org/en/), and then run lite-server:

```
npm install -g lite-server
lite-server

```
## Creating It From Scratch
If we want to learn how the pieces come together, it helps to go through the process of creating the Hello Crypto app ourselves. 

We can break it down into 3 parts: (1) interacting with the Ethereum blockchain in your app, (2) creating our own ERC20 token, and (3) deploying it on the blockchain. 


###Interacting with the Ethereum Blockchain in Your App

#### 1. Install Metamask

If you haven't yet, install the [Metamask Extension](https://metamask.io/) on your browser. 

In order to interact with the blockchain, we will need a wallet address from which to call transactions from. Currently the easiest way to create one is by using Metamask. And since we're making a web app, Metamask also conveniently provides us helper functions that we'll be using later.

#### 2. Create a new project directory and copy starter files

Create a new directory, and then copy the following files from the Hello Crypto project onto that directory:

```
index-2.html
js/web3.min.js
js/truffle-contract.min.js
```

Rename index-2.html to index.html:

```
mv index-2.html index.html
```

The javascript libraries we copied over are [web3.js, the Ethereum Javascript API](https://github.com/ethereum/web3.js) and [truffle-contract](https://github.com/trufflesuite/truffle-contract), a library to help us call Blockchain contracts.

#### 3. Use lite-server to run the app

Install lite-server and run the app:

```
npm install -g lite-server
lite-server
```

The browser should automatically start the web app from index.html and you should see a screen similar to the one below:

![Alt text](ss/1.png?raw=true "First Run")

Since 

I. Creating The ERC20 Token
Set up environment
install node + npm
npm install -g truffle
truffle init
npm install zeppelin-solidity

Create Token
Create sample token — go into node_modules and copy simple token code
change import
create migration
truffle develop (note on console and ganache)
truffle migrate (note on compile)

(optional) interact with contract on truffle console
Send ETH
web3.eth.accounts
contract creator is web3.eth.accounts[0]
recipientAccount = web3.eth.accounts[1]
web3.eth.getBalance 0 and 1
web3.eth.sendTransaction({from:Account1, to:Account2, value: 10000})

Send SIM
contractInstance = SimpleToken.deployed().then(i => contractInstance = i)
contractInstance.totalSupply
contractInstance.balanceOf(web3.eth.accounts[0])
contractInstance.balanceOf(recipientAccount)
What is Big Number?
contractInstance.transfer(recipientAddress, 5000)
check new balance

II. Interact with token from your app
Download hello-world app


(optional) Setup web3 javascript console
we will need a library to allow us to interact with the blockchain like truffle develop. This will vary depending on the app we’re making, but for web games we’ll be using web3 + javascript.
npm install -g lite-server
create index.html
lite-server
download web3.min.js
load web3.js on index.html

Perform previous ETH transfer operations
web3.eth
add truffle-contract.min.js
load simpleToken json
return balance
Add make-it-rain.html

III. Deploy on the Blockchain
To interact with the blockchain, we’ll need to have our own wallet account. We’ve been using Truffle develop accounts, but now we should use our own by creating one
Install Metamask, remember mnemonic
Get some ETH from faucet inside metamask
setup HDWallet provider, then connect to ropsten
migrate
Change make-it-rain settings to call ropsten on testnet instead
Change settings to use ETH instead
Show deployed website



download cryptoitem example game with frontend (explain cheating, but this is the step most developers will be used to) This is where it gets a bit dicey, as because blockchain support is still in its infancy, and it would depend on what game engine we sue. For now let’s use this frontend i created built on one of my favorite frameworks,

This part is what we game developers need to build together. I’ve shared part of this on hello world, and our efforts in making a mobile unity3d blockchain wallet over at unity3d-blockchain wallet. 
Chat with us at our telegram group.


Thank you!
