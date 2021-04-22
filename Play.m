clear solucaoinicial,pontuacaofpa,pontuacaosalas,pontuacaoprofessores

run("Inicializacao.m")
solucaoinicial

run("pontuacaofpa.m")
pontuacaofpa

run("pontuacaoprofessores.m")
pontuacaoprofessores

run("pontuacaosalas.m")
pontuacaosalas

obj_x = []
obj_y = []
obj_z = []

obj_x_val = 0
obj_y_val = 0
obj_z_val = 0

for i=1:30
  obj_x(i) = pontuacaofpa(i,4)
  obj_x_val += pontuacaofpa(i,4)
  
  obj_y(i) = pontuacaoprofessores(i,3)
  obj_y_val += pontuacaoprofessores(i,3)
  
  obj_z(i) = pontuacaosalas(i,3)
  obj_z_val += pontuacaosalas(i,3)
end
