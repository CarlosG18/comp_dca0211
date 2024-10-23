# comp_dca0211

> Implementações feitas na disciplina de Compiladores - DCA0211 - UFRN

![departamento-disciplina](https://img.shields.io/badge/dca-Compiladores-blue?style=for-the-badge)
![cpp-logo](https://img.shields.io/badge/c++-grey?style=for-the-badge&logo=cpp&logoColor=white)

## 🚀 Unidade I

O processo de compilação segue várias etapas essenciais para transformar o código-fonte em código executável. Tudo começa com a **Análise Léxica**, que transforma o código-fonte em uma sequência de tokens — as menores unidades de significado, como palavras-chave, operadores e identificadores — enquanto remove espaços em branco e comentários.

Em seguida, a **Análise Sintática** verifica se essa sequência de tokens obedece às regras gramaticais da linguagem de programação. Durante essa fase, uma árvore sintática é construída para representar a estrutura hierárquica do código.

A próxima etapa envolve a **Tradução Dirigida por Sintaxe**, onde a tradução do código é guiada pela estrutura da árvore sintática, permitindo que o compilador execute as operações de tradução conforme as regras da gramática.

A **Tabela de Símbolos** entra em ação ao longo de várias fases, armazenando informações sobre variáveis, funções e outros identificadores do programa. Ela permite ao compilador acessar dados como tipos e escopos de forma eficiente.

Finalmente, a **Construção do Tradutor** lida com a geração do código intermediário ou final. Esse componente traduz a representação intermediária em código executável, possivelmente aplicando otimizações antes de gerar o código de destino.

Essas etapas, interligadas, garantem que o código-fonte seja corretamente analisado, traduzido e convertido para um formato executável.

### 🎯 Atividades/projetos

- [📌 Laboratório 01 - Analisador Léxico ](./uni1/lab1/analisador_lexico.md)

- [📌 Laboratório 02 - Analise Semântica ](./uni1/lab2/lab2.md)