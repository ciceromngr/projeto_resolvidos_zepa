### O valor de uma variável local, antes que tenha sido feita a primeira atribuição, pode ser aproveitado?
- Não, dependendo essa varaivel ela pode vir com um "lixo", um resquicio na que veio na quela variavel.
- Entao antes de usar a variavel, deve-se fazer uma atribuição.

### Podemos atribuir um valor inteiro em uma variável real, e vice versa?
    Inteiro:= Round(((NumReal * valorInt) / valorReal)); // Real para inteiro temos que aredondar
    Real:=

### Quais são as formas de atribuição?
- uma das formas de atribuir um valor a uma variavel é ':='
### Qual o símbolo usado para:
> Terminar instruções
    ;

> Separar o valor e as casas decimais
    
    separa o valor "," casas decimais "."

> Separar informações

>Realizar a divisão inteira
    
    Div
    
>Obter o resto de uma divisão inteira

    Mod

>Delimitar blocos de comandos

    break;

### É possível controlar a precedência em operações aritméticas?
- Sim, Os operadores de mesma prioridade são interpretados da esquerda para a direita. Para exemplificar essa questão de precedência, observe a expressão:
    
        5 + 3 * ( 3 – 1 ) – 32 / 4 – 1

- O Computador ele exculta da seguinte forma:

        5 + 3 * 2 - 32 / 4 – 1 // Parenteses Primeiro

        5 + 3 * 2 - 32 / 4 – 1 // Mutiplicacione

        5 + 6 - 32 / 4 – 1 // divisione

        5 + 6 - 8 – 1 // Soma
    
        11 - 8 - 1 // Subtracione

        3 – 1 // Subtracione

        2 // resultado

### O que é mais importante: a expressão, ou o resultado? Posso fazer expressões  com tipos de dados diferentes do resultado?
- A Expressão ela é importante porem o que é mais importante é o resultado.
- Não, pois vai dar erro de incompatibilidade com o tipo.

### Qual a diferença entre operações unárias e binárias?
- Unario Precisa apenas de um valor/operando
- Binario Precisa de dois operandos.

### O que é um teste de mesa, ou teste chinês?
- Tem um recurso na programação que é a depuração , que é você fazer um acompanhamento do código, do que ele ta fazendo e como ele está rodando. dessa tecnica é chamada de teste Chinês.

### Onde visualizar os valores de variáveis no Delphi, no momento da depuração do código?
- colocando o mouse em cima da variavel ou no local variables

![image](https://user-images.githubusercontent.com/58851247/172911886-049c9e66-96f7-4718-8c10-64efb2189d00.png)