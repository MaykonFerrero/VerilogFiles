//Projeto 4
//  Elabore um decodificador 2 para 4 utilizando Verilog. 
//  As sa�das do decodificador devem ser ativadas em n�vel l�gico para cada c�digo presente na entrada.
//  Elabore o esquema el�trico do circuito;
//  INSERIR ESQUEMA EL�TRICO
//  Elabore a descri��o estrutural em Verilog; (ENVIAR PASTA COMPLETA PROJETO QUARTUS V9.1)
//  Fa�a a simula��o e s�ntese utilizando a ferramenta Quartus II. Para escolha da tecnologia utilize 
//  o dispositivo EP2C20F484C7 e fa�a a associa��o os pinos utilizando a documenta��o do Kit Altera DE0. 
//  (ENVIAR PASTA COMPLETA PROJETO QUARTUS V9.1)

//                   Especifica��o do Decodificador
//                   ______Entradas___|_____Sa�das______
//                          A1	A2	  |  S3	S2	S1	S0

//                          0	0	  |   1  0	0	0
//                          0	1	  |   0  1	0	0
//                          1	0	  |   0  0	1	0
//                          1	1	  |   0  0	0	1
	
	module my_module(S3, S2, S1, S0, A1, A2);
	output S3, S2, S1, S0;
	input A1,A2;
	wire A1_not, A2_not;
	
	nor NOR_1(S3, A1, A2);
	
	not NOT_1 (A1_not, A1);
	and AND_1(S2, A1_not, A2);
	
	not NOT_2 (A2_not, A2);
	and AND_2(S1, A2_not, A1);
	
	and AND_3(S0, A1,A2);
	
	endmodule 