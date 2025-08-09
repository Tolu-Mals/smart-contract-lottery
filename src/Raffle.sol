// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
/**
 * @title Simple Raffle Contract
 * @author Tolulope Malomo 
 * @notice For creating a simple raffle
 * @dev Implements Chainlink VRFv2.5
 */
contract Raffle {
    // Errors 
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;
    // @dev duration of the lottery in seconds
    uint256 private immutable i_interval;
    address payable[] private s_players; //we make address payable, since we need to pay raffle price to them eventually
    uint256 private s_lastTimeStamp;

    // Events 
    event RaffleEntered(address indexed player);

    constructor(uint256 entranceFee, uint256 interval) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimeStamp = block.timestamp;
    }

    function enterRaffle() external payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH sent!");
        // require(msg.value >= i_entranceFee, SendMoreToEnterRaffle());
        if(msg.value < i_entranceFee){
            revert Raffle__SendMoreToEnterRaffle();
        }
        s_players.push(payable(msg.sender));

        //Why we emit events?
        //1. Makes migration to a new contract easier.
        //2. Makes front end "indexing" easier.
        emit RaffleEntered(msg.sender);
    }

    // 1. Get a random number
    // 2. User a random number to pick a player
    // 3. Be automatically called
    function pickWinner() external view {
        //check to see if enough time has passed
        if(block.timestamp - s_lastTimeStamp < i_interval){
            revert();
        }

        //Get our random number from Chainlink
    }

    /**
     * Getter Functions
     */
    function getEntranceFee() external view returns (uint256){
        return i_entranceFee;
    }
}
