var abi = [
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "novoLocador",
				"type": "string"
			}
		],
		"name": "mudarLocador",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "pagaAluguel",
		"outputs": [],
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "percentualReajuste",
				"type": "uint256"
			}
		],
		"name": "reajustaAluguel",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "saque",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "nomeLocador",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "nomeLocatario",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "valorDoAluguel",
				"type": "uint256"
			},
			{
				"internalType": "address payable",
				"name": "_contaLocador",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_coeficiente",
				"type": "address"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "coeficiente",
		"outputs": [
			{
				"internalType": "contract Coeficiente",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "contaLocador",
		"outputs": [
			{
				"internalType": "address payable",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "dono",
		"outputs": [
			{
				"internalType": "address payable",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getLocador",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getNumAlteracoes",
		"outputs": [
			{
				"internalType": "uint32",
				"name": "",
				"type": "uint32"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "locatario",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "mesesRestantes",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "totalMesesContato",
				"type": "uint256"
			}
		],
		"name": "simulaMulta",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "valorMulta",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "valorAtualDoAluguel",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]