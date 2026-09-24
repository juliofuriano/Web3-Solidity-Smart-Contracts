# 🚀 Web3 & Solidity Smart Contract Development

Repositorio de estudio, desarrollo de contratos inteligentes y ejercicios prácticos en Solidity y Web3.

## 📁 Contenido del Repositorio

- **01. Fundamentos de Solidity (`/01-fundamentos-solidity`)**:
  - `Calculadora.sol`: Gestión de variables en `storage`, visibilidad (`public` vs `internal`), modificadores de control (`revert`) y emisión de eventos.
  - `Sender2.sol`: Patrón base de control de acceso y propiedad (*Ownership*) mediante captura de `msg.sender` en el despliegue[cite: 1].

- **02. Estándar ERC-20 (`/02-erc20-token`)**:
  - `Cryptoreal.sol`: Token fungible estándar implementado con librerías de OpenZeppelin. Emisión inicial controlada (`_mint`) de 1.000 tokens con 18 decimales asignados a la cuenta desplegadora[cite: 1, 4].

- **03. Interacción entre Contratos (`/03-contratos-conectados`)**:
  - `Sumador.sol` y `Resultado.sol`: Comunicación entre contratos en la EVM mediante interfaces y llamadas directas para almacenamiento y procesamiento de datos[cite: 1, 5].
  - `Interfaces/IResultado.sol`: Definición de interfaces para desacoplar lógica y permitir llamadas entre contratos[cite: 5].
  - `PayableFunctions/PayableContract.sol` y `PayableContractv2.sol`: Manejo de funciones pagables, recepción de fondos y validaciones de balances[cite: 5].
  - `Comprobadores/requireTest.sol` y `PruebaSeguridad.sol`: Control de flujo, aserciones mediante `require` y pruebas de seguridad en llamadas[cite: 1, 5].

- - **04. Proyectos I - Intermedio (`/04-Proyectos_Intermedio_I`)**:
  - `CryptoBank/CryptoBank.sol`: Bóveda multiusuario de Ether con control contable independiente (`userBalance`), límite parametrizable global (`maxBalance`), control de acceso administrativo (`onlyAdmin`), mitigación de vectores de reentrancy aplicando el patrón CEI (*Checks-Effects-Interactions*) y eventos on-chain.

- **05. Seguridad y Vulnerabilidades (`/X-Seguridad-Vulnerabilidades`)**:
  - `01-vulnerabilidad-tx-origin`: Análisis de vectores de ataque por suplantación de identidad mediante `tx.origin` frente a `msg.sender`, diseño del contrato víctima vulnerable y simulación del contrato atacante para drenaje de fondos[cite: 6].

## 🛠️ Herramientas utilizadas
- **Lenguaje:** Solidity (`^0.8.24`)
- **Librerías:** OpenZeppelin Contracts
- **Entornos:** Remix IDE / Foundry



