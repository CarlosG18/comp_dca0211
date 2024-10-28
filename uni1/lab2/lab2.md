# Laboratório 02 - Analise Semântica

> adptando o código para converter números em booleanos

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO onde você pode encontra-los [aqui](https://github.com/JudsonSS/Compiladores)

## 💡 elaboração da solução

basicamente a solução para realizar a conversão de um número inteiro para booleano foi desenvolvida apartir da adição do codigo abaixo no arquivo `ast.cpp`:

```c++
    Logical::Logical(Token *t, Expression *e1, Expression *e2) : Expression(NodeType::LOG, ExprType::BOOL, t), expr1(e1), expr2(e2)
{
    // convertendo o tipo da expressão 1
    if (expr1->Type() == "int"){
        stringstream value;
        value << expr1->token->lexeme;

        // trocando o tipo da expressão de int para bool
        if(value.str() == "0"){
            expr1->type = ExprType::BOOL;
            expr1->token->tag = Tag::FALSE;
            expr1->token->lexeme = "FALSE";
        } else{
            expr1->type = ExprType::BOOL;
            expr1->token->tag = Tag::TRUE;
            expr1->token->lexeme = "TRUE";
        } 
    }
    
    // convertendo o tipo da expressão 2
    if (expr2->Type() == "int"){
        stringstream value;
        value << expr2->token->lexeme;

        // trocando o tipo da expressão de int para bool
        if(value.str() == "0"){
            expr2->type = ExprType::BOOL;
            expr2->token->tag = Tag::FALSE;
            expr2->token->lexeme = "FALSE";
        } else{
            expr2->type = ExprType::BOOL;
            expr2->token->tag = Tag::TRUE;
            expr2->token->lexeme = "TRUE";
        }
    }
    
    if (expr1->type != ExprType::BOOL || expr2->type != ExprType::BOOL)
    {
        stringstream ss;
        ss << "\'" << token->lexeme << "\' usado com operandos não booleanos ("
           << expr1->Name() << ":" << expr1->Type() << ") ("
           << expr2->Name() << ":" << expr2->Type() << ") ";
        throw SyntaxError{scanner->Lineno(), ss.str()};
    }
}
```

- **Alguns pontos interresantes**:

1. Verificamos se o tipo da expressão é do tipo **int** a partir do método `Type()` que retorna uma string informando o tipo. caso o tipo da expressão for **int**, devemos tranformar-lo em uma expressão booleana e atribuir **FALSE** caso for igual a **0** e **TRUE** caso for maior que zero.

2. Para verificar isso, é criado uma stringstream `value` e colocado nela o valor do lexema do token associado a expressão, que se tratará do valor atribuido a expressão. com isso podemos fazer as verificações e as devidas modificações. 