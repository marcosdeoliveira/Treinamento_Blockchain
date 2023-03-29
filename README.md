# Treinamento Blockchain

### Definição

Blockchain é uma tecnologia que permite o armazenamento e a transferência segura de informações em redes descentralizadas. Cada bloco de informações é conectado ao anterior, formando uma corrente de blocos, garantindo que essas informações sejam imutáveis e à prova de adulteração.

Essa tecnologia é usada em diversas áreas, como em criptomoedas, sistemas de votação eletrônica, logística e gerenciamento de cadeias de suprimentos, entre outras.

Para melhor compreensão podemos vivenciar uma [demonstração de funcionamento](https://andersbrownworth.com/blockchain/).


### Entrando no cripto mundo
https://metamask.io/

A nossa porta de entrada para as aplicações em blockchain será a Metamask, uma cripto wallet disponível como uma extensão para navegador e aplicativo de celular.

#### Configurando a Metamask
 1. Abra o seu navegador de internet (recomendamos o Google Chrome) e vá para o site oficial do Metamask (https://metamask.io/)
 2. Clique no botão "Baixar" para instalar a extensão do Metamask para o seu navegador.
 3. Após a instalação, o ícone do Metamask deve aparecer no canto superior direito do seu navegador. Clique no ícone e siga as instruções para criar uma nova carteira.
 4. Escolha uma senha forte para proteger a sua carteira e salve a sua frase de recuperação em um lugar seguro (ela será necessária caso você precise recuperar a sua carteira no futuro).
 5. Depois de criar a sua carteira, você pode depositar fundos em criptomoedas na sua carteira Metamask. Para fazer isso, vá até a aba "Depósito" e selecione a criptomoeda que você deseja depositar. Copie o endereço fornecido pela Metamask e use-o para enviar a criptomoeda de outra carteira ou exchange.
 
 
 ```
 Lembre-se de sempre manter a sua senha e frase de recuperação em segurança e nunca compartilhá-las com ninguém. 
 A carteira Metamask é uma ferramenta poderosa, mas requer cautela e responsabilidade para ser utilizada com segurança.
 ```

Agora que você tem fundos na sua carteira Metamask, você pode utilizá-los para interagir com aplicativos descentralizados (dApps) baseados em blockchain.

Durante esse treinamento utilizamos a rede de testes Sepolia.

### Como criar um Token:

Tokens são ativos digitais que podem ser negociados e transferidos entre as partes na rede. Os tokens podem representar qualquer coisa, desde dinheiro, bens físicos, ações, direitos de voto, entre outros.

O smart contract é programado para definir as regras de como os tokens podem ser criados, como eles podem ser transferidos, quem pode transferi-los e as condições necessárias para que essas transações ocorram. Isso permite que os tokens sejam automatizados e negociados sem a necessidade de intermediários ou terceiros.

Precisamos levar em conta muitos critérios na criação de um smart contract para que ele seja eficaz e seguro, por exemplo:padrões da plataforma de blockchain, lógica de negócios, segurança design do contrato, aditoria e legislação.

Para facilitar nossa vida, boas almas criaram algumas ferramentas para simulação e criação de smart contracts que respeitam ao menos alguns padrões:
 - [Remix](https://remix.ethereum.org/)
 - [Open Zeppelin](https://docs.openzeppelin.com/contracts/4.x/wizard)

Os arquivos [aluguel.sol](https://github.com/marcosdeoliveira/Treinamento_Blockchain/blob/main/aluguel.sol) e [6_coeficiente.sol](https://github.com/marcosdeoliveira/Treinamento_Blockchain/blob/main/6_coeficiente.sol) foram criados no Open Zeppelin.


#### Vamos ao passo a passo para simular nosso smart contract!

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
   
      
      
      
      
      
      
