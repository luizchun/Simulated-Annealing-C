Disciplinas;
DadosDeEntrada;

nturmas = 7; #Toda as turmas 
nduplasaula=2;
dias=6; #dias da semana que tem aula
nprofessor_ndisciplinas_sala = 3;
nturmasaut=4; %turmas da automa��o
sabaut=1; %aulas de sabado na automa��o: 1-n�o; 0-sim
sabmec=0; %aulas de sabado na mecatronica: 1-n�o; 0-sim
nmaxdisciplinasporturma=20;
solucaoinicial=zeros(nduplasaula*nturmas,dias*nprofessor_ndisciplinas_sala); #14x18