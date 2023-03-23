/*
    SPDX-License-Identifier: CC-BY-4.0
*/

/*

Desenvolvido e testado utilizando o Remix: 
https://remix.ethereum.org/

Aplicação de finalidade didática.

Abaixo alguns conceitos importantes desenvolvidos no treinamento. São apenas observações, 
para ter certeza de como utilizar verifique a documentação.

    - pure: modificador utilizado para funções que não leem nem alteram nada no código
*/

pragma solidity ^0.8.9;



contract Coeficiente {

    function getCoeficiente() pure public returns (uint8) {
        return 2*1;
    }
}
