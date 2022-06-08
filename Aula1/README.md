###  O que entendemos como ‘bloco de comandos’? Quais palavras reservadas usamos para delimitar esse bloco?
- 
        Begin 
            { Bloco de Códigos }
        end

### O que significa a estrutura sequencial?
- Os comandos dentro do bloco serão executados em sequência, o que significa que a cada linha após o termino de sua execução será executada a linha posterior.

### Qual o símbolo utilizado para terminar instruções?
- o ponto e vírgula ( ; )

### Como exibir uma mensagem simples na tela?
- ShowMessage('Hello World');

### O que fazer, quando reabrir um projeto no Delphi, e o código que tinha sido digitado anteriormente ‘sumiu’: Ou ainda, a tela ‘Principal’ não foi aberta no editor de código?
- Na propria tela de Boas vindas(Welcome) vai estar os projetos recentes porem se o projeto não foi salvo devidamente infelizmente não tem pelo menos que eu saiba como reverter. 
- Você pode utilizar o menu do lado direito para navegar pelo projeto ou apertar ctrl + f12 e escolher qual unit quer brincar. 

### Como podemos alterar o rótulo de um botão? Qual a propriedade que usamos, e onde é feita a modificação?
- 1º -> Você seleciona o botão que quer alterar o rótulo
- 2º -> no menu a esquerda podemos ver as propriedades do botão selecionado
- 3º -> na propriedade caption alteramos o rótulo 

### Existe diferença entre o rótulo e o nome do botão? eles são interligados ou independentes?
- sim
- eles são independentes , pois o Caption altera o nome do botao e o Name altera a forma como vamos indentificar o botao.

### Como são chamados os objetos que colocamos na tela, como botões etc.?
- componenets 
### O que faz o comando AllocConsole?
- dizer para o programa que vamos utilizar o console

### Qual a diferença entre Write e Writeln? 
- write = coloca um texto no console mais sem quebra de linha e pára o cursor após o conteúdo
- writeln = coloca um texto no console mais quebra de linha no final

### Escreva as teclas de atalho para:
- Salvar o código
    - > crtl + s

- Executar o programa
    - > f9, botão de play que fica na barra de menus, ou no menu do lado direito da tela você irá visualizar a seu projeto clicando com o o botão direito do mouse   

### Alternar entre a edição de código e o desenho da tela
- f12

### Acessar o inspetor de propriedades dos objetos
- f11

### Exibir a lista com todos os arquivos do projeto
- ctrl + f12

### Para quê serve a indentação? Ela influencia o programa?
- Para deixar seu codigo mais organizado, que chamamos de codigo indentado.
- Um codigo mau indentado complica na leitura do codigo, e também na manutenção do codigo.
    - > para quem vai fazer manutencão demanda um pouco mais de tempo para ler o codigo, e se estivesse indentado/com indentação seria mais rapido para o programador fazer uma leitura mais ampla e rapida do codigo.

### Em Delphi é possível escrever todo o código em minúsculas?
- Sim, porque na linguagem pascal ela nao faz diferenciação entre maiúscula e minúscula

Algoritmos
Criar um aplicativo 'Saudações Console'. Assim como o app da aula anterior, teremos três botões para cumprimentos. Dessa vez, vamos exibir a saudação em Console.
Adicionar no programa ‘saudações’ um botão com rótulo 'Saudação puxa-saco', escrevendo os cumprimentos em linhas diferentes.
Desafios
Um amigo meu disse que consegue escrever três palavras diferentes sem tirar a caneta do papel. No caso do nosso programa, o comando de escrita só pode ser chamado uma vez, porém as três mensagens devem ser separadas no console.