# 🎨 Sorteio de Cores - Instruções de Configuração

## 📋 Visão Geral

Sistema de sorteio de cores onde cada pessoa seleciona seu nome e recebe uma cor aleatória. As cores são salvas em um banco de dados e cada pessoa só pode sortear uma vez.

## 🎯 Funcionalidades

- ✅ 14 pessoas podem sortear cores
- ✅ 10 cores diferentes (algumas com até 2 repetições)
- ✅ Cada pessoa só pode sortear uma vez
- ✅ Bloqueio por navegador (localStorage)
- ✅ Lista em tempo real de todos os sorteios
- ✅ Contador de sorteios realizados e cores disponíveis

## 🚀 Passo a Passo para Configuração

### 1️⃣ Criar Conta no Supabase

1. Acesse: https://supabase.com
2. Clique em "Start your project"
3. Faça login com GitHub ou email
4. É gratuito!

### 2️⃣ Criar Novo Projeto

1. No dashboard do Supabase, clique em "New Project"
2. Escolha um nome para o projeto (ex: "sorteio-cores")
3. Crie uma senha forte para o banco de dados
4. Escolha a região mais próxima (ex: South America - São Paulo)
5. Clique em "Create new project"
6. Aguarde 2-3 minutos até o projeto ficar pronto

### 3️⃣ Criar a Tabela no Banco de Dados

1. No menu lateral, clique em **SQL Editor**
2. Clique em **New Query**
3. Copie TODO o conteúdo do arquivo `database.sql`
4. Cole no editor SQL
5. Clique em **Run** (botão verde)
6. Deve aparecer "Success. No rows returned"

### 4️⃣ Obter as Credenciais

1. No menu lateral, clique em **Project Settings** (ícone de engrenagem)
2. Clique em **API**
3. Você verá duas informações importantes:
   - **Project URL** (algo como: https://xxxxx.supabase.co)
   - **anon public** key (uma string longa)
4. **COPIE** essas duas informações

### 5️⃣ Configurar o Arquivo HTML

1. Abra o arquivo `index.html`
2. Procure pelas linhas **271 e 272**:
   ```javascript
   const SUPABASE_URL = 'SUA_URL_DO_SUPABASE';
   const SUPABASE_ANON_KEY = 'SUA_CHAVE_ANONIMA_DO_SUPABASE';
   ```
3. Substitua pelos valores que você copiou:
   ```javascript
   const SUPABASE_URL = 'https://xxxxx.supabase.co';
   const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...';
   ```
4. **Salve o arquivo**

### 6️⃣ Testar Localmente

1. Abra o arquivo `index.html` no seu navegador
2. Você deve ver a página sem erros
3. Tente fazer um sorteio de teste
4. Verifique se aparece na lista "Todos os Sorteios"

### 7️⃣ Hospedar o Site (Gratuito)

#### Opção A: Vercel (Recomendado - Mais Fácil)

1. Acesse: https://vercel.com
2. Faça login com GitHub
3. Clique em "Add New" → "Project"
4. Importe o repositório ou arraste a pasta
5. Clique em "Deploy"
6. Pronto! Você receberá uma URL tipo: https://seu-projeto.vercel.app

#### Opção B: Netlify

1. Acesse: https://netlify.com
2. Faça login
3. Arraste a pasta do projeto para o site
4. Pronto! Você receberá uma URL

#### Opção C: GitHub Pages

1. Crie um repositório no GitHub
2. Faça upload dos arquivos
3. Vá em Settings → Pages
4. Selecione a branch main
5. Salve e aguarde alguns minutos
6. URL: https://seu-usuario.github.io/nome-do-repo

## 📊 Cores Disponíveis

| Cor      | Quantidade |
|----------|------------|
| Preto    | 1x         |
| Branco   | 1x         |
| Marrom   | 1x         |
| Vermelho | 1x         |
| Azul     | 2x         |
| Verde    | 2x         |
| Laranja  | 2x         |
| Rosa     | 1x         |
| Roxo     | 1x         |
| Amarelo  | 2x         |

**Total: 14 cores para 14 pessoas**

## 👥 Pessoas da Lista

1. Adelma
2. Adilma
3. Adilmeia
4. Davi
5. Guilherme
6. Iara
7. Josué
8. Lais
9. Luis Fernando
10. Luisa
11. Pedro
12. Renato
13. Sara
14. Vovô

## 🔒 Sistema de Bloqueio

O sistema impede múltiplos sorteios de 2 formas:

1. **localStorage**: Salva no navegador quando a pessoa sorteia
2. **Banco de Dados**: Verifica se o nome já foi usado

Se alguém limpar o cache do navegador, ainda assim não conseguirá sortear novamente pois o nome já estará no banco de dados.

## 🐛 Solução de Problemas

### Erro: "Configure as credenciais do Supabase"
- Verifique se você substituiu as variáveis no arquivo index.html (linhas 271-272)

### Erro: "Erro ao carregar sorteios"
- Verifique se executou o SQL corretamente no Supabase
- Verifique se as credenciais estão corretas
- Abra o Console do navegador (F12) para ver erros detalhados

### Botão "Sortear" não funciona
- Verifique se você tem conexão com internet
- Abra o Console (F12) e veja se há erros
- Verifique se selecionou um nome

### Quer resetar os sorteios
1. No Supabase, vá em **Table Editor**
2. Selecione a tabela `color_draws`
3. Delete todos os registros
4. Limpe o localStorage do navegador (F12 → Application → Local Storage → Clear)

## 📱 Como Cada Pessoa Usa

1. Acesse o link do site
2. Selecione seu nome na lista
3. Clique em "Sortear Minha Cor"
4. Veja sua cor sorteada!
5. Role para baixo e veja todos os sorteios realizados

## 💡 Dicas

- Compartilhe o link do site com todos
- A página atualiza automaticamente a cada 5 segundos
- Todos podem ver em tempo real quem já sorteou
- O sistema é responsivo e funciona em celular

## 📞 Suporte

Se tiver problemas:
1. Verifique todas as etapas acima
2. Abra o Console do navegador (F12) e tire print dos erros
3. Verifique se o Supabase está online

## ✅ Checklist Final

- [ ] Conta criada no Supabase
- [ ] Projeto criado no Supabase
- [ ] SQL executado com sucesso
- [ ] Credenciais copiadas
- [ ] index.html configurado com as credenciais
- [ ] Teste local funcionando
- [ ] Site hospedado online
- [ ] Link compartilhado com todos

---

**Pronto! Seu sistema de sorteio está no ar! 🎉**
