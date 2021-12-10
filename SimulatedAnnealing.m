#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <gsl/gsl_siman.h>

Inicializacao;

#run("Sorteador.m"); #APLICA PERTUBACAO
Play; #CALCULA PONTUAÇÃO

obj_val_current = obj_x_val + obj_y_val + obj_z_val;


T0= 10000  ;    #TEMPERATURA INICIAL
TI=T0;
temp_plot= T0 ;#TEMPERATURA PARA PLOTAR
M=50       ;    #QUANTAS VEZES DIMINUIR A TEMPERATURA
N=20     ;      #QUANTAS VEZES BUSCAR VIZINHO(PARA CADA M RODA N VEZES)
alpha=0.85;    #QUANTOS VOU DIMINUIR A TEMPERATURA (1-alpha)
K=0.1     ;    
pp=0;
temp = []   ;  # PARA PLOTAR TEMP
obj_val = [];  # PARA PLOTAR OBJ_VAL PARA CADA M

#SIMULATED ANNEALING

  for(rr=1:M) 
  
    for(uu=1:N)
     obj_val_possible = 0;
     Play;
     #run("Play.m")
     obj_val_possible = obj_x_val + obj_y_val + obj_z_val;
     
     #solution_current = solucaoinicial;
     
     rand_num = rand(1);
     
     formula = (exp((-(obj_val_possible - obj_val_current))/TI));
            
          if(obj_val_possible <= obj_val_current)
              
               obj_val_current = obj_val_possible;
               solution_current = solucaoinicial;

##           else 
##            if rand_num <= formula;
##                 obj_val_current = obj_val_possible;
##                 solution_current = solucaoinicial;
##                 
##            endif
        endif  
          printf("Solução: %d |", pp);
          printf("Pontuação C: %d |", obj_val_current);
          printf("Pontuação P: %d |", obj_val_possible);
          printf("Formula: %d |", formula);
          printf("Rand:%d |",rand_num);
          printf("M:%d ", rr);
          printf("N:%d |",uu);
          printf("T:%d\n",T0);
          T0=alpha*T0; 
          temp(rr,uu)=T0;
          obj_val(rr,uu)= obj_val_possible;
          pp=pp+1;
          solucaoinicial
          solution_current
    endfor
      
endfor  
obj_val
temp
obj_val_current

solution_final = solution_current

dlmwrite('ArquivosExcel\SolucaoFinal.csv',solution_final,';',1,1);

#plot(obj_val,temp);






