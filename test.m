


T0= 1000  ;    #TEMPERATURA INICIAL
temp_plot= T0 ;#TEMPERATURA PARA PLOTAR
M=2       ;    #QUANTAS VEZES DIMINUIR A TEMPERATURA
N=2     ;      #QUANTAS VEZES BUSCAR VIZINHO(PARA CADA M RODA N VEZES)
alpha=0.85;    #QUANTOS VOU DIMINUIR A TEMPERATURA (1-alpha)
K=0.1     ;    

temp = []   ;  # PARA PLOTAR TEMP
obj_val = zeros(M,N) ; # PARA PLOTAR OBJ_VAL PARA CADA M

#SIMULATED ANNEALING

  for(i=1:M) 
  
    for(j=1:N)
          #temp(i,j)=1 ;
          obj_val(i,j)= 1;
    endfor
      
endfor  
temp
obj_val





