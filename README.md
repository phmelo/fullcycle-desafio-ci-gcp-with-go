# Full Cycle - Desafio CI (GCP + GitHub + Go)



1) Você deverá criar uma simples aplicação que possua uma função  chamada soma que receberá dois parâmetros e retornará a adição desses  dois valores.

Essa função deverá ser chamada na função main do programa. Quando  executada, deverá exibir da na tela o resultado da soma de 5 + 5.

2) Crie um teste unitário para essa função.

Solução:

- Criar pasta /src/soma
  - Arquivos: main.go, soma.go e soma__test.go

- para testar, basta entrar no diretório soma e digitar "go test"



3) Ative um processo de CI que execute os seguintes passos:

- Executar o teste unitário
- Push da imagem gerada no processo de CI no Container Registry do GCP
- Ative a App do Cloud Build no Github para que cada pull request execute automaticamente o processo de CI

Solução:

- Criar o arquivo Dockerfile para fazer o processo de build do container com a aplicação feita em Go.
- Criar o arquivo cloudbuild.yaml que será usado pelo Google Cloud Build para fazer o processo de CI.
  - Criar repositório no GitHub
  - Configurar o Google Clound Build para acessar o repositório GitHub criado.
  - Criar uma trigger para disparar a execução dos passos setados no cloudbuild.yaml apenas quando for criado um pull request



![image-20200602233609534](.\img\image-20200602233609534.png)