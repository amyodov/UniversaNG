# Universa-NG

This is the attempt to rewrite the node code of [Universa Blockchain](https://UniversaBlockchain.com) (see [github.com/UniversaBlockchain/universa](https://github.com/UniversaBlockchain/universa) for the original source) using the most fit, tested and proven programming language: Shell.

## Dependencies

* Shell interpreter (you don’t even need Bash for it; being just 30 years old Bash is too young and not well proven; usual Bourne shell `sh`, with its 42 years of history, will work better and is much more tested).
* netcat
* openssl

## How to test

Launch it using `./universa-ng.sh`

It has been launched and fully auto-configured, even creating the private key for you! And the whole network is up already!

Using curl (assuming you have it installed), call the network on the `/network` endpoint, to get the network schema: `curl http://localhost:8080/network`

It works! No mess with [Universa Docker images](https://kb.universablockchain.com/universa_docker_images/92), no need to examine the [Node Owners Central](https://kb.universablockchain.com/node_owner_central/31) on [Universa Knowledge Base](https://kb.universablockchain.com). What could be easier?

## Status

Fully working and self-configured network, scalable up to 1 node!

It is still WIP though, and some features may be missing (such as: non-Dapp based smart contract logic processing and validation; keeping the ledger data between session securely; keeping ANY ledger data at all; more than 1 node; BFT-consensus; supporting all the existing contracts and tokens registered in the Mainnet at the moment).

If you really need any of these fancy-shmancy features more than the immense stability of the codebase written in proven Bourne shell language, you should use the Universa Mainnet at [MainNetwork.io](https://MainNetwork.io). Otherwise stay tuned for future updates of this project!


(C) April 1, 2019, Alex Myodov
