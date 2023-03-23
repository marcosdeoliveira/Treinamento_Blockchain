# Treinamento Blockchain

Desenvolvido utilizando [Remix](https://remix.ethereum.org/)

### Como replicar:
 
 1. Acesse o remix
 
 2. Acesse a pasta 'contracts'
 
 3. Crie um novo arquivo em branco e cole o conteúdo de [6_coeficiente.sol](https://github.com/marcosdeoliveira/Treinamento_Blockchain/blob/main/6_coeficiente.sol) **OU** baixe o arquivo e utilize a opçao fazer upload 
```
o arquivo precisa estar nomeado como 6_coeficiente e dentro da mesma pasta do 'aluguel.sol' por causa do comando 'import'
```

 4. Siga a mesma lógica do passo anterior para criar seu arquivo [aluguel.sol](https://github.com/marcosdeoliveira/Treinamento_Blockchain/blob/main/aluguel.sol)
 
 5. Verifique o '_Solidity compiler_' e, caso a opção auto compile esteja desativada, utilize o botão '_Compile_' para ambos os arquivos
 
 6. Vá para '_Deploy & run transactions_' 
 
 7. Selecione o enviroment '_Remix VM(Merge)_' para não gerar gastos desncessários
 
 8. Compile primeiro o contrato coeficiente e depois o contrato aluguel
 ```
para compilar o contrato aluguel é necessário preencher as seguintes informaçoes: 
    string nomeLocador, string nomeLocatario, uint256 valorDoAluguel, address _contaLocador, address _coeficiente
exemplo de preenchimento:
    nomeLocador:  Amauri
    nomeLocatario: Fernanda
    valorDoAluguel:2600000 (está em Gwei, pode colocar baste zero)
    _contaLocador: você pode clicar em 'ACCOUNT' e selecionar qualquer uma diferente da que vai compilar para silular a conta do locador.
    _coeficiente: 0xB4EAbB72A8BcEEF4a7c9f8E041743E69E542e50f (Sepolia)
```      
   
      
      
      
      
      
      
