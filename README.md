# 🚀 Guia de Configuração e Execução do Projeto

Este guia contém os passos essenciais para configurar, instalar as dependências e executar o servidor da API.

---

## 1. Criar e Ativar o Ambiente Virtual

No terminal, dentro da pasta raiz do projeto:

### 🐧 Linux / macOS:

```bash
python3 -m venv venv
source venv/bin/activate
```

### 🪟 Windows (PowerShell):
```Bash
python -m venv venv
.\venv\Scripts\activate
```

## 2. Instalar as Dependências
Com o ambiente virtual ativo, instale todas as bibliotecas listadas no arquivo requirements.txt.

### 📦 Instalação Principal:
```Bash
pip install -r requirements.txt
```

### Opcional: Atualizar o pip (Não é necessário para rodar o toolfront)
Para garantir que o seu gerenciador de pacotes está na versão mais recente:
```Bash
pip install --upgrade pip
```

## 3. Rodar o Servidor FastAPI
Use o Uvicorn para iniciar o servidor da aplicação.

```Bash
uvicorn main:app --reload
```

### 📘 Explicação do Comando:
```
main: Nome do arquivo principal sem a extensão .py
app: Nome da instância do seu aplicativo FastAPI (onde você define app = FastAPI(...)).
--reload: Reinicia o servidor automaticamente quando detecta alterações no código (ideal para desenvolvimento).
```

## 4. Testar se Está Rodando
Após iniciar o servidor, verifique o status da aplicação acessando a URL de health check no navegador.
Acesse:http://127.0.0.1:8000/health

Deve retornar a seguinte resposta:
JSON{"status": "connected"}

## 5. Endpoints DisponíveisA seguir, a lista de rotas (endpoints) que sua API oferece:

Método | Endpoint      | Descrição                                             | Formato do Body (se aplicável)
GET    | /health       | Checa a conexão com o banco de dados.                 | N/A 
POST   | /ask          | Recebe uma pergunta para processamento.               | { "pergunta": "Qual é a capital do Brasil?" }
POST   | /reconnect-db | Reinicializa o pool de conexões com o banco de dados. | N/A
