//Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;


// Functionss:
    // 1. Desposit ether
    // 2. Withdraw ether

// Rules:
    // 1. MultiUser
    // 2. Only can deposit ether
    // 3. User can only withdraw previously deposited ether
    // 4. Max bakance = 5 ether
    // 5. MaxBalance modifiable by owner
    // UserA -> Deposit (5 ether)
    // UserB -> Deposit (2 ether)
    // Bank balanca = ether
    // UserA -> Deposit (1 ether) -> deposit (5 ether) -> withdraw (2 ether) -> deposit (5 ether)



contract CryptoBank {

    // Variables
    uint256 public maxBalance;
    address public admin;
    mapping(address => uint256) public userBalance;

    // Events
    event EtherDeposit (address user_, uint256 etheramount_);
    event EtherWithdraw (address user_,uint256 etheramount_);

    //Modifiers
    modifier onlyAdmin ( ) {
        require(msg.sender == admin, "Not allowed");
        _;


    }

    constructor (uint256 maxBalance_, address admin_) {
        maxBalance = maxBalance_;
        admin = admin_;
    }

    // External Functions
    
    // 1. Deposit
    function depositEther() external payable {
        require (userBalance[msg.sender] + msg.value <= maxBalance, "MaxBalance reached");
       userBalance [msg.sender] += msg.value; // userBalance [msg.sender] = userBalance [msg.sender] + msg.value;
       emit EtherDeposit (msg.sender,msg.value);


    }

    // 2. Withdraw
    function withdrawEther (uint256 amount_) external{
        require (amount_ <= userBalance[msg.sender], "Not enough ether");
                                                                                // CEI pattern: 1.Checks 2.Effect 3. Interaction
                                                                                // Reentrany attacks

        // 1. Udate state
         userBalance [msg.sender] -= amount_;

        // 2. Transfer ether
        (bool success, ) = msg.sender.call {value: amount_}("");
        require (success, "Transfer failed");

        emit EtherWithdraw (msg.sender, amount_);
        


    }
    // 3. Modify maxBalance
    function modifyMaxbalance(uint256 newMaxBalance_) external onlyAdmin{
        maxBalance = newMaxBalance_;
    }



}
