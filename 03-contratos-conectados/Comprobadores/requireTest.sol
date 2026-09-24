//Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;

error SenderNotAdmin (address);


//Contrato
contract requireTest{

    address public admin;

    constructor (address admin_) {
        admin = admin_;
            }


    // Function + if check: msg.sender sea igual a admin
    function checkAdmin () public view{
        if ( msg.sender != admin) revert ( );

    }
     // Function + require check
     function checkAdminRequire () public view {
        require (msg.sender == admin, "Msg.sender is not admin");

     }

    // Function + require check
    function checkAdminCustomErrors ()public view {
        if ( msg.sender != admin) revert SenderNotAdmin(msg.sender);



    }

}