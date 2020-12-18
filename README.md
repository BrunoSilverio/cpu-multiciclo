# Unidade Central de Processamento (CPU) multi ciclo

O segundo projeto de Arquitetura de Computadores é uma Unidade Central de Processamento (CPU) multi ciclo desenvolvida em VHDL. E tem como objetivo juntar e organizar os laboratórios feitos em aula, como manipulação de registradores, datapath, operações lógicos, multiplexadores, entre outros, para assim executar as instruções de Mover, Somar, Subtrair, AND, OR e suas versões com imediato.

![alt text](https://github.com/BrunoSilverio/cpu-multiciclo/blob/main/instrucoes.PNG?raw=true)

:warning: Observações

● Ri, Rj, Rk: registradores de n bits (pertencentes a um banco de registradores. Pelo menos 4 registradores de 8 bits cada).

● Imed: valor imediato.

Arquitetura da CPU sugerida:

![alt text](https://github.com/BrunoSilverio/cpu-multiciclo/blob/main/arquitetura.PNG?raw=true)

## Especificação

### Registradores (quantidade, endereço e tamanho)

Para o projeto foi desenvolvido um registrador de 8 bits e outro registrador de 16 bits. Ambos possuem a mesma arquitetura com a única diferença o tamanho de bits. Eles recebem clock, o sinal regwrite (que define se é para ter escrita em registrador) e uma entrada que seria o valor a ser guardado. Nós usamos o registrador de 8 bits para declarar o PC (program counter), é usado no banco de registrador, um registrador auxiliar. Enquanto o de 16 é usado somente para representar a instrução.

### Formato das instruções (OPCODE)

As instruções são formadas por 16 bits, sendo do tipo R e do tipo I. As instruções do tipo I tem 8 bits reservados, que recebe um valor imediato e 2 endereço de registradores (2 bits cada). Já as instruções do tipo R recebem 3 registradores (2 bits cada). Os primeiros quatro bits representam o opcode sendo as possibilidades:

● 0000 o MOV

● 0010 o OR

● 0100 o ADD

● 0110 o SUB

● 1000 o AND

Para diferenciar de um imediato fizemos com que quando o última sinal do opcode for 1 ele representa a instrução no formato i, por exemplo 0100 é um ADD tipo R e 0101 é um ADDi.

### Unidade de Controle: diagrama e tabela de estados, sinais e seus significados

A unidade de controle é responsável por gerar os sinais a cada ciclo do clock, que faz com que outros componentes da CPU funcionem. Gera sinal de 1 bit para PCWrite, RegWrite, RegAuxWrite, IRWrite, MemToReg. Gera sinal de 2 bits para AluSrcA, AluSrcB, AluControl e gera sinal de 4 bits para OpCode.
