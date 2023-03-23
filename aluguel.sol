/*
    SPDX-License-Identifier: CC-BY-4.0
*/

/*
Este código é uma modificação gerada a partir de:
https://github.com/jeffprestes/cursosolidity/blob/master/aluguel.sol

Desenvolvido e testado utilizando o Remix: 
https://remix.ethereum.org/

Aplicação de finalidade didática.

Abaixo alguns conceitos importantes desenvolvidos no treinamento. São apenas observações, 
para ter certeza de como utilizar verifique a documentação.

    - import de outros arquivos de contrato;
    - varíavel do tipo Coeficiente: permite relacionar diferentes contratos;
    - acessar metodos de outros contratos: ex: coeficiente.getCoeficiente();
    - variável adress payable: necessário para inserir o endereço de carteiras que vão receber algum valor;
    - método payable;
    - objeto msg e suas propriedades .sender e .value;
    - function external payable: modificadores necessários quando precisamos criar funções que recebem ethers;
    - function external: modificador necessário para que funções possam transferir ether;
    - require: método que testa antes de fazer a operação. Útil para utilizar antes do transfer por ser reversível e não gerar prejuizos;
    - transfer: propriedade para adress payable para enviar ehter;
    - this: referente ao contrato atual;
    - propriedade .balance: saldo do contrato. ex: address(this).balance .
*/

pragma solidity ^0.8.9;

import "./6_coeficiente.sol";

contract Aluguel {
    
    string public locatario;
    string private locador;
    uint256 private valor;
    address payable public dono;
    address payable public contaLocador;
    Coeficiente public coeficiente;
    uint32 private numAlteracoes=0;
    uint256 constant numeroMaximoLegalDeAlgueisParaMulta = 3;

    constructor(string memory nomeLocador, 
                string memory nomeLocatario, 
                uint256 valorDoAluguel, 
                address payable _contaLocador,
                address _coeficiente)  {
        dono = payable(msg.sender);
        locador = nomeLocador;
        locatario = nomeLocatario;
        valor = valorDoAluguel;
        contaLocador = _contaLocador;
        coeficiente = Coeficiente(_coeficiente);
    }

 

    function valorAtualDoAluguel() public view returns (uint256) {
        return valor;
    }

    function getNumAlteracoes() public view returns (uint32) {
        return numAlteracoes;
    }

    function getLocador() public view returns (string memory) {
        return locador;
    }

    function mudarLocador(string memory novoLocador) public {
        locador = novoLocador;
    }


 
    function simulaMulta( uint256 mesesRestantes, 
                    uint256 totalMesesContato) 
    public
    view
    returns(uint256 valorMulta) {
//         ^-- repare que o Solidity tambem permite criarmos uma variavel de retorno
        valorMulta = valor*numeroMaximoLegalDeAlgueisParaMulta;
        valorMulta = valorMulta/totalMesesContato;
        valorMulta = valorMulta*mesesRestantes;


        return valorMulta;
    } 
    
    
    function reajustaAluguel(uint256 percentualReajuste) public {
        uint256 valorDoAcrescimo = 0;
        numAlteracoes++;
        valorDoAcrescimo = ((valor*percentualReajuste)/coeficiente.getCoeficiente() );
        valor = valor + valorDoAcrescimo;
    }

    function pagaAluguel() external payable {
        //reversível, nao gera prejuizo
        require(msg.value >= valor, "o pagamento deve ser maior ou igual ao valor atual do aluguel");
        if (msg.value > 3000000) {
            dono.transfer(5000);
            contaLocador.transfer(valor-5000);
        } else {
            contaLocador.transfer(valor);
        }
    }

    function saque() external {
        require(msg.sender == dono, "somente o dono pode sacar.");
        require(address(this).balance>0, "o contrato nao tem fundos.");
        contaLocador.transfer(address(this).balance);
    }



}
