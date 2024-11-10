# Laboratório 04 - Ferramentas de Análise Léxica

> adaptando o codigo para o flex tratar alguns casos a mais

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO onde você pode encontra-los [aqui](https://github.com/JudsonSS/Compiladores) - **LAB14**.

## 💡 elaboração da solução

foram aplicados as seguintes alterações no código base:

### Inclua a palavra-chave while:

- **lexer.l**:
```cpp
while       return WHILE;
```

foi preciso incluir o WHILE no emum definido no arquivo `tokens.h` e no `parser.cpp`:

- **tokens.h**:
```c++
enum {IF=1, WHILE, THEN, ELSE, ID, NUM, RELOP}; 
```

- **parser.cpp**:
```c++
void Parser::Start()
{
    // enquanto não atingir o fim da entrada
    while ((lookahead = scanner.yylex()) != 0)
    {
        // trata o token recebido do analisador léxico
        switch(lookahead)
        {
            ...
            case WHILE: cout << "WHILE\n"; break;
            ...
        }
    }
}
```

### Mude os operadores relacionais para serem os mesmo de C++

```c++
"=="        return RELOP;
"!="        return RELOP;
```

### Permita o caractere sublinhado em qualquer parte de um identificador 

para que o identificador capture o sublinhado foi feito a seguinte mudança na regra do `id`:

- **lexer.l**:
```c++
...
id      ((\_)+|{letra})+((\_)*|{letra}|{digito})*
...
```

### Inclua um padrão o para o token STRING.

O padrão o consiste em um sinal de aspas ("), qualquer cadeia de caracteres e aspas no final. Porem, se o sinal de aspas
aparecer na cadeia, ele tera que ser precedido por uma barra invertida (\) e,
similarmente, uma barra invertida na cadeia precisa ser representada por duas
barras. O valor lexico e a cadeia sem as aspas e sem as barras usadas como
caracteres especiais.

foi criado um novo tipo `STRING` e colocado na lista de tokens:

- **tokens.h**:
```c++
enum {IF=1, WHILE, THEN, ELSE, ID, NUM, RELOP, STRING}; 
```

e ajustado o arquivo `parser.cpp` para tratar o token de string:

- **parser.cpp**:
```c++
void Parser::Start()
{
    // enquanto não atingir o fim da entrada
    while ((lookahead = scanner.yylex()) != 0)
    {
        // trata o token recebido do analisador léxico
        switch(lookahead)
        {
            ...
            case STRING: cout << "STRING: " << scanner.YYText() << "\n"; break;            
            ...
        }
    }
}
```

após isso foi criada a regra usando expressões regulares para capturar o comportamento de uma string:

- **lexer.l**:
```c++
...
\"({delim}|{id}|{num}|(\\[\"\\n\\t\\r\\b\\f\\v]))*\"  return STRING;
...
```

## 🎥 Video Explicativo

- [link do video](https://youtu.be/itaHQ82HvGE)