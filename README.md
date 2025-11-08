# 🎲 Decentralized Lottery Smart Contract  

A fully decentralized and provably fair lottery built with Solidity, leveraging **Chainlink VRF** for randomness and **Chainlink Automation** for automated winner selection.  

Built by Tolulope Malomo as part of Cyfrin Updraft Foundry Fundamentals Course

🔗 **Deployed Contract (Sepolia Testnet)**: [0x4e642541977234f2cb84ec8f25ed78dca5879332](https://sepolia.etherscan.io/address/0x4e642541977234f2cb84ec8f25ed78dca5879332#code)  

---

## 🧠 Overview  

This project implements a **trustless lottery system** where participants can enter by paying an entry fee, and a random winner is automatically selected after a predefined interval — without any manual intervention or centralized control.  

Key features include:  
- 🎯 **Provably fair randomness** powered by **Chainlink VRF v2.5**.  
- ⏱ **Automated upkeep** handled by **Chainlink Automation**, ensuring the lottery runs autonomously.  
- 🧩 **Modular architecture** following best practices in smart contract development.  
- 🧪 Comprehensive **unit and integration tests** for reliability and security.  
- ⚙️ **Deployment scripts** for seamless environment setup and testing.  
- 📦 **Forge + Soldeer** used for dependency management and reproducible builds.  

---

## ⚙️ Tech Stack  

| Category | Tools / Frameworks |
|-----------|--------------------|
| Smart Contracts | Solidity (v0.8.x) |
| Blockchain | Ethereum (Sepolia Testnet) |
| Randomness | Chainlink VRF |
| Automation | Chainlink Automation |
| Testing | Foundry (Forge) |
| Dependency Management | Soldeer |
| Deployment | Forge Scripts |
| Environment | Anvil (local), Sepolia (testnet) |

---

## 🧩 Project Structure  

```bash
├── src/
│   ├── Raffle.sol                # Main lottery contract
│   └── VRFCoordinatorMock.sol    # Mock for local testing
├── script/
│   ├── DeployRaffle.s.sol        # Deployment script
│   └── HelperConfig.s.sol        # Network configuration helper
├── test/
│   ├── RaffleUnitTest.t.sol      # Unit tests
│   └── RaffleIntegrationTest.t.sol # Integration tests
├── foundry.toml
└── README.md
````

---

## 🧪 Testing

All contracts were rigorously tested using **Foundry’s Forge** framework.

* **Unit tests** validate individual functions and logic.
* **Integration tests** ensure correct behavior with Chainlink VRF and Automation on Sepolia.

Run tests with:

```bash
forge test
```

---

## 🚀 Deployment

Deployment is automated through **Forge scripts**.
To deploy to Sepolia:

```bash
forge script script/DeployRaffle.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --verify
```

---

## 🌐 Live Demo

🔍 [View Contract on Etherscan](https://sepolia.etherscan.io/address/0x4e642541977234f2cb84ec8f25ed78dca5879332#code)
🎲 Interact directly through the **Read/Write Contract** tabs or your preferred wallet interface.
