# Laboratório 01 - Analisador Léxico

> adptando o codigo para aceitar comentários

**Obs**: O código desenvolvido pegou como base os códigos desenvolvidos pelo professor JUDSON SANTIAGO onde você pode encontra-los [aqui](https://github.com/JudsonSS/Compiladores) - **LAB6**.

## 💡 elaboração da solução

basicamente a solução de implementação de funcionalidade dos comentários no analisador lexico foi desenvolvida apartir da adição do codigo abaixo:

```c++
    stringstream termo;
    termo << peek;

    if (termo.str() == "/") {
        peek = cin.get();
        termo << peek;

        if (termo.str() == "//") {
            // Ignora comentários de linha única
            do {
                peek = cin.get();
            } while (peek != '\n');

            return Token{peek};
        } else if (termo.str() == "/*") {
            // Ignora comentários de múltiplas linhas
            do {
                peek = cin.get();
                if (peek == '*') {
                    peek = cin.get();
                    if (peek == '/') {
                        break;  // Fim do comentário de múltiplas linhas
                    }
                }
            } while (true);

            peek = cin.get();
            return Token{peek};
        } else {
            // Se não for comentário, restaura o valor anterior de `peek`
            peek = termo.str()[0];
        }
    }
```

- **Alguns pontos interresantes**:

1. O elemento atual da expressão `peek` é colocada no `termo`, se for uma **/** ele irá adicionar o próximo elemento da expressão na variável `termo`. Após isso ele irá fazer uma verificação se a string formada foi a expressão associada a comentários (//), caso seja, os próximos simbolos da expressão será obtidos e nada será realizado até que uma nova linha seja identificada (\n). dessa forma, conseguimos tratar o primeiro caso de comentários.

2. Caso o segundo simbolo atribuido a variável `termo` for um `*`, a expressão resultante será a `/*`que é a expressão para o outro tipo de comentário. Temos então um do-while que irá ignorar todos os simbolos seguinte até o ponto em que ele irá parar apenas quando o `peek` obtido (obtendo o próximo simbolo da expressão fornecida) for um `*` seguido de um `/`. com isso o segundo caso de comentários é tratado.

3. caso a expressão formada na string `termo` não for associada a um comentário (// ou /**/), então devemos fazer com que o `peek` retorne um simbolo atrás para continuar o scaneamento da expressão fornecida pelo usuário.
