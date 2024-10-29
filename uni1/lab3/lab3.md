# Laboratório 03 - Geração de código intermediário

> adptando o código para gerar o código intermediário da estrutura while

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO (LAB11), onde você pode encontrá-los [aqui](https://github.com/JudsonSS/Compiladores/tree/2e1b81ba859e18e938ea149d1cef2edea04dde36/Labs/Lab11)

## 💡 elaboração da solução

basicamente a solução para realizar a geração de código intermediário da estrutura while foi desenvolvida apartir da adição do codigo abaixo no arquivo `ast.cpp`:

```c++
    While::While(Expression *e, Statement *s) : 
    Statement(NodeType::WHILE_STMT), 
    expr(e), 
    stmt(s) 
{
    before = NewLabel();
}

void While::Gen()
{
    cout << 'L' << before << ':' << endl;
    cout << "\tifTrue " << n->ToString() << " goto L" << before << endl;
    stmt->Gen();
    Expression * n = Rvalue(expr);
}
```

- **Alguns pontos interresantes**:

1. A geração de código intermediário para o while é bastante similir ao do dowhile, a unica diferença é que no while devemos executar primeiro a verificação para poder fazer as instruções que estão dentro do while. Por isso devemos fazer a verificação primeiro com a linha `cout << "\tifTrue " << n->ToString() << " goto L" << before << endl;`, caso seja verdadeiro ele irá para a linha seguinte, caso contrario ele irá pular para o proximo bloco de instruções definido pela variavel `before`.

2.  explicar a função Gen() do stmt e o Rvalue da expressão n;

```txt
stmt->Gen();
Expression * n = Rvalue(expr);
```