# 🚀 Web3 & Solidity Smart Contract Development

Repositorio de estudio, desarrollo de contratos inteligentes y ejercicios prácticos en Solidity y Web3.

## 📁 Contenido del Repositorio

- **01. Fundamentos de Solidity (`/01-fundamentos-solidity`)**:
  - `Calculadora.sol`: Gestión de variables en `storage`, visibilidad (`public` vs `internal`), modificadores de control (`revert`) y emisión de eventos.
  - `Sender2.sol`: Patrón base de control de acceso y propiedad (*Ownership*) mediante captura de `msg.sender` en el despliegue.

- **02. Estándar ERC-20 (`/02-erc20-token`)**:
  - `Cryptoreal.sol`: Token fungible estándar implementado con librerías de OpenZeppelin. Emisión inicial controlada (`_mint`) de 1.000 tokens con 18 decimales asignados a la cuenta desplegadora.
    
- **03. Interacción entre Contratos (`/03-contratos-conectados`)**:
  - `Sumador.sol` y `Resultado.sol`: Comunicación entre contratos en la EVM mediante interfaces y llamadas directas para almacenamiento y procesamiento de datos.
  - `PruebaSeguridad.sol`: Pruebas de ejecución y comprobación de funciones pagables (`payable`).

- **04. Protocolos y Seguridad (`/04-banco-cripto`)**:
  - `CryptoBank.sol`: Bóveda multiusuario de Ether con control contable independiente (`userBalance`), límite parametrizable global (`maxBalance`), control de acceso administrativo (`onlyAdmin`), mitigación de vectores de reentrancy aplicando el patrón CEI (*Checks-Effects-Interactions*) y eventos on-chain.



## 🛠️ Herramientas utilizadas
- **Lenguaje:** Solidity (`^0.8.24`)
- **Librerías:** OpenZeppelin Contracts
- **Entornos:** Remix IDE / Foundry
