### Para cada informação abaixo, classifique segundo o tipo de dados.
>Quantidade de vendedores da loja
    
-  Inteiros 

>Nome da rua, com número e complemento

-  Caracteres e Strings

>Preço do etanol comum

- Reais 

>Estado de iluminação de uma lâmpada

- Booleanos

>CEP do endereço, com hífen

- Caracteres e Strings

>Andar do prédio onde está o elevador (indicador acima da porta)

- Inteiros

>Pressionamento do botão do elevador (led acima do botão)

- Booleanos

>Data de aniversário do professor

- Caracteres e Strings

>Peso do prato na balança do restaurante

- Reais

>Número de bois no curral da fazenda

- Inteiros

>Dia dos namorados em 2020

- Inteiros

>Quantidade de laranjas na caixa

- Inteiros

>Uma vogal minúscula

- Caracteres e Strings

>Título de um livro

- Caracteres e Strings

>Limite do cartão de crédito

- Reais

>Horário de transmissão do jogo

- Caracteres e Strings

>Altura de um prédio

- Reais

>Páginas do caderno

- Inteiros

>Sala de reunião está disponível (ou ocupada)

- Booleanos

>Alternativas do enunciado da questão de múltipla escolha

- Booleanos

### Qual analogia usamos para representar a memória do computador, seus espaços, e conteúdos?

- Que ele parace com um grande armario vazio, e quando declaramos uma variavel um espaco e reservado para aquela variavel, e quando atribuimos algum valor para a variavel, altomaticamente nesse espaco reservado fica armazenado o valor.  

### O que são tipos de dados? Descreva os tipos de dados primitivos em Delphi, com o nome do tipo de informação e sua finalidade de armazenamento 
- tipo de dados nada mais é do que algo do mundo real que pode ser representado computacionalmente, exe: os numeros que pertecem ao conjunto dos numeros inteiros ou reais, letras, caracteres especiais, acentuação, pontuação, palavras, dentre outros.

- Integer - > são usados para representar números inteiros
- Real - > números com uma parte fracionária.
- Booleano - > Representa um valor Lógico: True or False, Verdaderio ou Falso etc.
- String - > Representa uma sequência de caracteres.

### Qual a característica dos números inteiros que é fundamental em programação?
- Os números inteiros são os números positivos e negativos, que não apresentam parte decimal e, o zero. Estes números formam o conjunto dos números inteiros, ou seja números que nao possuem ponto flutuante.

- exe inteiros: {-1, 0 , 1}
- exe flutuantes: {-56.4,... - , +56.5 .... +}

### O que são palavras reservadas?
- As palavras reservadas pertecem a linguagem, exemplificando tais palavras não podem ser usadas como nomes de variaveis ou de funcoes void/retun, nem sofrerem alteracoes nos nomes.

### O que são variáveis?
- Como seu nome ja diz , seus valores variam de elementos a/para elemento.

### Como são chamados os nomes de variáveis?
        Var
            nomeDaVariavel: Tipo de dados(Integer, String, Boolean, ...)
            
            // São alguns exemplos de variaveis validas e invalidas
            NomeVariavelValida: Integer;
            Nome_De_Variavel_Valida: String;
            //  Nome-De-Variavel-Invalida: Boolean;
            nomedevariavelvalida: Double;
            _nomeDeVariavelValida: Char;
            //  Nome de variavel invalida: String;
            //  %NomeDeVariavelInvalida: Integer;

### Posso criar duas variáveis como o mesmo “nome”? Justifique.
- Não, quando você declara uma variavel e em seguida declara outra variavel com o mesmo nome vai dar erro na compilação, mesmo que você troque os tipos, isso por que já tem um espaço na memória

### O que é uma atribuição?
- Atribuir algo a. exe :
        
        var
            nome: String;
        begin
            // Estou atribuindo 'Meu nome' a variavel 'nome';
            nome := 'Meu nome';
            // na quele espaço de memoria eu estou dizendo que vai ter um valor no caso 'Meu nome'
        end;


### Qual palavra representa melhor o comando do sinal de atribuição?
        :=
### Quando atribuímos um segundo valor a uma variável, o que acontece com o primeiro?
- valor da Primeira é substituído pelo valor da segunda, letra 'C'

        var
            nome: string;
        begin

            AllocConsole;
            nome:= 'Meu Nome';
            nome:= 'Abacate';
            Writeln(nome);

        end;

### Qual a diferença entre o ponto e a vírgula em programação?
- Vírgula em programação é usada como separador. Ponto é usado para decimais

### O comando de escrita permite “misturar” vários tipos de dados? Justifique.
- Sim, por que Ele faz a conversão dos tipos dados para o tipo String, mesmo que seja um Numero ele vai ser do tipo caractere
### Para quê usamos comentários na programação?
- Para comentar alguma function ou trecho de código sobre sua funcionalidade 
### Quais os tipos de comentários existentes?

        // comentario de unica linha
        {
            comentario de multiplas linhas
            ....
            ....
            ....
        }
### Pra que servem os “pontinhos azuis” ao lado das linhas no editor de código?
-  São as linhas onde o código é executado, e neles ao clicarmos ele fica com a tonalidade vermelha ou seja nossos queridos breakpoint
 
