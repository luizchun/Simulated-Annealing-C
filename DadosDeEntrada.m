
dadosdeentrada= dlmread('DadosEntrada.csv',';',1,0);

e = size(dadosdeentrada); #pega o tamanho 21x22 
f = e(1,1); # tamanho linha 21
g = e(1,2); # tamanho coluna 22

#dados de entrada matriz 21x22, 
#com os professores, 
#n° da disciplina,
#sala: 1-teorica, pratica 