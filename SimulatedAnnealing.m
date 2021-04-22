#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <gsl/gsl_siman.h>

run("Play.m")

obj_val_current = obj_x_val + obj_y_val + obj_z_val;

T0= 1000      #TEMPERATURA INICIAL
temp_plot= T0 #TEMPERATURA PARA PLOTAR
M=1         #QUANTAS VEZES DIMINUIR A TEMPERATURA
N=1          #QUANTAS VEZES BUSCAR VIZINHO(PARA CADA M RODA N VEZES)
alpha=0.85    #QUANTOS VOU DIMINUIR A TEMPERATURA (1-alpha)
K=0.1         

temp = []     # PARA PLOTAR TEMP
obj_val = []  # PARA PLOTAR OBJ_VAL PARA CADA M


#SIMULATED ANNEALING

  for(i=1:M)
  
    for(j=1:N)
    
     run("Play.m")
     obj_val_possible = obj_x_val + obj_y_val + obj_z_val;
     
     solution_current = solucaoinicial
     
     rand_num = rand(1)
     
     formula = 1/(exp((obj_val_possible - obj_val_current)/T0))
            
          if(obj_val_possible <= obj_val_current)
              
               obj_val_current = obj_val_possible;
               solution_current = solucaoinicial;

           
           else 
            if rand_num <= formula
                 obj_val_current = obj_val_possible;
                 solution_current = solucaoinicial;
          
            else 
                   obj_val_current = obj_val_current;
                   solution_current = solution_current;
            endif
          endif      
          
       # append the temp. to [temp] for plotting reasons
    endfor
    temp(i)=T0
    obj_val(i)= obj_val_current
    T0 = alpha*T0
  
endfor  

plot(temp,obj_val)





