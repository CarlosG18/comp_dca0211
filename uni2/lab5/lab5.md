# Laboratório 05 - integração Flex + compilador Front-end

> adaptando o código para realizar a integração do flex com um compilador front-end simples

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO onde você pode encontra-los [aqui](https://github.com/JudsonSS/Compiladores).

## 💡 Etapas da integração

foram realizadas algumas etapas para realizar a integração, foram elas:

### [1/5] ✅ Copia das definições e classes do lab3

foi ultilizado como base principal para o desenvolvimento os codigos do lab 4, juntamente com todas as definições e classes do lab 3, onde foi preservado o arquivo `parse.cpp` e `parse.h` do lab 3 e excluido o arquivo `sample.cpp` do lab 4.

```objectivec
    lab5/
├── .vscode/
├── build/
│   ├── CMakeFiles/
│   │   ├── cmake_install.cmake
│   │   ├── CMakeCache.txt
│   │   ├── integracao
│   │   ├── lex.yy.cc
│   │   └── Makefile
│   └── (arquivos gerados pela compilação)
├── Testes/
│   ├── teste1.cpp
│   ├── teste2.cpp
│   ├── teste3.cpp
│   └── teste4.cpp
├── ast.cpp
├── ast.h
├── checker.cpp
├── checker.h
├── CMakeLists.txt
├── error.cpp
├── error.h
├── flex.md
├── gen.cpp
├── gen.h
├── lab5.md
├── lexer.l
├── makefile
├── parser.cpp
├── parser.h
├── symtable.cpp
├── symtable.h
├── test.txt
├── tokens.h
└── tradutor.cpp
```

### [2/5] ✅ ajuste no CMakeLists.txt

foi feito alguns ajustes no arquivo `CMakeLists.txt` para se adptar ao projeto:

```txt
cmake_minimum_required(VERSION 3.0.0)
project(integracao)

# Configuração do C++
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 17)
set(SOURCE_FILES ast.cpp gen.cpp checker.cpp parser.cpp symtable.cpp error.cpp tradutor.cpp)

# Configuração do Flex
find_package(FLEX)
FLEX_TARGET(Lexer lexer.l ${CMAKE_CURRENT_BINARY_DIR}/lex.yy.cc COMPILE_FLAGS "-+")
include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${CMAKE_SOURCE_DIR})

# Executável depende também da saída do Flex
add_executable(integracao ${SOURCE_FILES} ${FLEX_Lexer_OUTPUTS})
```
### [3/5] ✅ Adptação da classe lexer

- O **struct** Token, presente no arquivo `lexer.h` foi transferido para o arquivo `tokens.h`, juntamente com o **enun** TAG. com isso foi possivel apagar o arquivo `lexer.h`;

- Na parte do arquivo `lexer.cpp` temos alguns pontos para se tomar atenção, o **construtor** e o metodo **Scan()**.

#### ▶️ Construtor

temos o seguinte no construtor:

```cpp
// construtor 
Lexer::Lexer()
{
	// insere palavras-reservadas na tabela
	token_table["main"]  = Token{ Tag::MAIN, "main" };
	token_table["int"]   = Token{ Tag::TYPE, "int" };
	token_table["float"] = Token{ Tag::TYPE, "float" };
	token_table["bool"] = Token{ Tag::TYPE, "bool" };
	token_table["true"]  = Token{ Tag::TRUE, "true" };
	token_table["false"] = Token{ Tag::FALSE, "false" };
	token_table["if"]    = Token{ Tag::IF,    "if" };
	token_table["while"] = Token{ Tag::WHILE, "while" };
	token_table["do"]    = Token{ Tag::DO,    "do" };
	
	// inicia leitura da entrada
	peek = fin.get();
}
```

como a função **Scan()** retorna um token, precisamos criar uma estrutura para o token que esteja no escopo do flex. para isso criamos a seguinte estrutura:

```cpp
typedef union { 
    Token* token; 
} YYSTYPE; 

YYSTYPE yylval;
```

com isso, conseguimos fazer o mesmo comportamento do contrutor do lexer "manual" para o flex aplicando as seguintes ações nas regras definidas:

```cpp
%%

main        { yylval.token = new Token(MAIN, yytext); return MAIN; }
int         { yylval.token = new Token(INTEGER, yytext); return INTEGER; }
float       { yylval.token = new Token(FLOATING, yytext); return FLOATING; }
bool        { yylval.token = new Token(BOOLEAN, yytext); return BOOLEAN; }
true        { yylval.token = new Token(TRUE, yytext); return TRUE; }
false       { yylval.token = new Token(FALSE, yytext); return FALSE; }
while       { yylval.token = new Token(WHILE, yytext); return WHILE; }
if          { yylval.token = new Token(IF, yytext); return IF; }
else        { yylval.token = new Token(ELSE, yytext); return ELSE; }
do          { yylval.token = new Token(DO, yytext); return DO; }

%%
```

#### ▶️ Metódo Scan()

Já para o metódo **Scan()**, como ele retorna um Token, e o metodo usado pelo flex **yylex()** retorna um inteiro, precisamos realizar a seguinte mudança nesse comportamento:

> quando aparecer um scanner.Scan() substitua pela criação de um novo token que captura o valor com o flex -> `new Token {scanner->yylex(), scanner->YYText()}`

esse procedimento foi feito nos arquivos:

- checker.cpp;
- parser.cpp;

após isso, foi realizado a exclusão dos arquivos `lexer.h` e `lexer.cpp` e adpatado os arquivos que nessitavam dessa importação para o seguinte = `Lexer * scanner; -> extern yyFlexLexer *scanner;` nos seguintes arquivos:

- ast.cpp;
- gen.cpp;
- parser.cpp;

e a importação da lib do flex `#include <FlexLexer.h>` nos seguintes arquivos:

- ast.h;

### [4/5] ✅ Troca do metodo Lineno

Foi nescessario tambem a troca da função **Lineno()** do lexer "manual" para o **lineno()** da lib flex nos arquivos:

- ast.cpp;
- gen.cpp;
- parser.cpp;

#### [5/5] ✅ adicionando tipos restantes

Foi adicionado alguns tipos restantes no **enum Tag** do arquivo `tokens.h`:

- BOOLEAN;
- ELSE;
- LT;
- GT; 

## 🎥 Video Explicativo

- [link do video]()