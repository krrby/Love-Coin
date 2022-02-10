from brownie import accounts, config, TLCToken

initial_supply = 10000000000000000000000000000 #10 billion

def main(): 
    account = accounts[0]
    #account = accounts.add(config["wallets"]["from_key"])
    erc20 = TLCToken.deploy(
        initial_supply, {"from": account}, 
    )