clear solucaoinicial;
clear pontuacaofpa;
clear pontuacaosalas;
clear pontuacaoprofessores;

run("Inicializacao.m");
Inicializacao;

run("pontuacaofpa.m");
pontuacaofpa;

run("pontuacaoprofessores.m");
pontuacaoprofessores;

run("pontuacaosalas.m");
pontuacaosalas;

sorteapertubacao = randi([1,3]);
switch  (sorteapertubacao)
  case 1
    run("Sorteador.m");
  case 2
    run("Sorteador2.m");
  case 3
    run("Sorteador3.m");
endswitch

obj_x = [];
obj_y = [];
obj_z = [];

obj_x_val = 0;
obj_y_val = 0;
obj_z_val = 0;

ff=size(pontuacaofpa,1);
for i=1:ff
  obj_x(i) = pontuacaofpa(i,4);
  obj_x_val += pontuacaofpa(i,4);
 end
 
zz=size(finalpontuacaoprofessores,1);
for i=1:zz
  obj_y(i) = finalpontuacaoprofessores(i,3);
  obj_y_val += finalpontuacaoprofessores(i,3);
 end
 
gg=size(finalpontuacaosalas,1);
for i=1:gg
  obj_z(i) = finalpontuacaosalas(i,3);
  obj_z_val += finalpontuacaosalas(i,3);
end

