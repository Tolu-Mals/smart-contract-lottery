-include .env

.PHONY: all test deploy

build :; forge build

test:; forge test

install:; forge soldeer update

deploy-sepolia:
	@forge script script/DeployRaffle.s.sol:DeployRaffle --rpc-url ${SEPOLIA_RPC_URL} --account tolulope --broadcast --verify --etherscan-api-key ${ETHERSCAN_API_KEY} -vvvv