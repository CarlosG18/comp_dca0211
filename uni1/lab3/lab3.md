# Laboratório 03 - Geração de código intermediário

> adptando o código para gerar o código intermediário da estrutura while

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO (LAB11), onde você pode encontrá-los [aqui](https://github.com/JudsonSS/Compiladores/tree/2e1b81ba859e18e938ea149d1cef2edea04dde36/Labs/Lab11)

## 💡 elaboração da solução

basicamente a solução para realizar a geração de código intermediário da estrutura while foi desenvolvida apartir da adição do codigo abaixo no arquivo `ast.cpp` e no `ast.h`:

**ast.cpp**:
```c++
    While::While(Expression *e, Statement *s) : 
    Statement(NodeType::WHILE_STMT), 
    expr(e), 
    stmt(s) 
{
    before = NewLabel();
    after = before + 1;
}

void While::Gen()
{
    cout << 'L' << before << ':' << endl;
    Expression * n = Rvalue(expr);
    cout << "\tifFalse " << n->ToString() << " goto L" << after << endl;
    stmt->Gen();
    cout << "\tgoto L" << before << endl;
    cout << 'L' << after << ':' << endl;
}
```

**ast.h**
```c++
struct While : public Statement
{
    unsigned before;
    unsigned after;
    Expression *expr;
    Statement *stmt;
    While(Expression *e, Statement *s);
    void Gen();
};
```

### 🔄 Explicando o fluxo:

1. É impressa a numeração do bloco de instrução com **`cout << 'L' << before << ':' << endl;`**

2. Obtemos a decomposição (código de três endereços) da `expr` e atribuímos à variável `n` com **`Expression * n = Rvalue(expr);`**

3. O código intermediário é impresso com **`cout << "\tifFalse " << n->ToString() << " goto L" << after << endl;`**, onde verificamos se a expressão atribuída a `n` é verdadeira ou falsa. Se for verdadeira, o fluxo continua para a linha seguinte; se for falsa, ele pula para o bloco de instruções definido pela variável `after`.

4. Chamamos o método **Gen()** do `stmt` para gerar o código intermediário das estruturas internas contidas no while.

5. Ao final, é impresso **`cout << "\tgoto L" << before << endl;`**, que indica que o fluxo deve retornar ao bloco de instruções anterior para realizar uma nova iteração.
