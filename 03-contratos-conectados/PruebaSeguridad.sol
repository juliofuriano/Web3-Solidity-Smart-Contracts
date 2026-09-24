//Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;

//Contrato
    contract SeguridadTest {
         address public owner;
         uint256 public valor;

    constructor() {
    owner = msg.sender;

    }

    function cambiarValor (uint256 _nuevoValor) public{


    require(owner == msg.sender);
    valor = _nuevoValor;

    }

    // Función VULNERABLE con tx.origin
    function cambiarValorTxOrigin (uint256 _nuevoValor) public {
        // funcion que seria un caos: require (tx.origin == owner, "No autorizado por tx.origin");
        // funcion que hay que poner:
        require (msg.sender == owner, "no autorizado: solo el owner directo");
        valor = _nuevoValor;


    }

    }
// Contrato malicioso del atacante (simula el engaño)
    contract ContratoAtacante {
    
    // Intenta colar la orden usando la función vulnerable (tx.origin)
    function explotarTxOrigin(address _target, uint256 _nuevoValor) public {
        // Llama al contrato objetivo
        SeguridadTest(_target).cambiarValorTxOrigin(_nuevoValor);{

        }
    }
 
}   































