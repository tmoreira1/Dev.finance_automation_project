# Projeto de automação notepad 


<img src="exemplo-image.png" alt="exemplo imagem">

> O projeto consiste em um projeto de automação do aplicativo bloco de notas, utilizando as tecnologias Ruby e Appium.

### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:

- [x] Automatizar Acesso e cadastro de pastas
- [x] Automatizar cadastro de anotações
- [ ] Automatizar excluir anotações
- [ ] Automatizar excluir pastas
- [ ] Automatizar exportar anotações

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

- Java sdk instalado
- variáveis de ambiente JAVA_HOME e ANDROID_HOME configuradas
- Para baixar o jdk8 segue o link:

http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html
- Como configurar variáveis de ambiente JAVA_HOME e ANDROID_HOME segue o link:

https://developer.android.com/studio/command-line/variables?hl=pt-br

- Homebrew instalado
- Node JS instalado
- Appium Server instalado
- allure report instalado

## 🚀 Instalando <nome_do_projeto>

Para instalar o <nome_do_projeto>, siga estas etapas:

Linux e macOS:

Esse projeto possui um Gemfile com as dependências usados para rodar os testes. Primeira passo é fazer a instalação a partir dele:

A partir da raiz do projeto:
```
< $ bundle install> 
```
Abrir um simulado e ativar o serve Appium

Para executar a todos os testes do projeto basta executar:
```
< $ cucumber> 
```
Para visualizar o relatorio allure basta executar:
```
< $ allure serve logs/> 
```




[⬆ Voltar ao topo](#nome-do-projeto)<br>
