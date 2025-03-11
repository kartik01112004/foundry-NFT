# NFT

# Non Fungible Token(ERC-721)

Eg: Pokemon

- Each card is unique
- Can't be replaced with another card
- Has its own attributes
- Can be bought/sold
- Can be stored in a wallet
- Can be transferred to another wallet
- Can be used in a game
  etc... etc..

## Semi-fungible token (ERC-1155)

## Difference b/w ERC20 and ERC721

ERC20 are simple, they simply map the amount of tokens to the address of the holder

721 have unique token ids these token ids have unique owner and they have a token URI

so each token is unique and represents a unique asset so as they are unique we need to difine the attributes of that unique asset just like a pokemon has differnt stats and a unique trainer which makes that unique

### Metadata

- onchain metadata
- ofchain metadata

### Toekn URI

Uniform Resource Identifier : tells all there is to know about a token.
can say its just an api call

## IPFS

Inter Planitary File System  
its similar to blockcahin but doesnot have minig or stuff

### what IPFS does?

- It hash our data/file ::: ipfs node does that for us.. every node has kind of same hashing function that a blockchain does4
- get a unique output.. and pin that data/output to our node
- our node is cnnected to a large network of nodes... which is very light as compaiered to a blockchain node.
- when we request our data nodes find it and fetches it from that node (its a little bit centralized as the data is on a node)
- If a node likes a data (hey that peice of data is cool i want it) it can have the data copy from the holder node. and we can keep doing this...
- there is no smart contract so execution it can only store.

### Problem

in order for our data to be decentralized other node needsto pin our data or we are the only ipfs node that got the hash for the data
