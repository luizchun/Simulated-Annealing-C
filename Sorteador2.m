  
  oo = [2,5,8,11,14,17]; #COLUMA
  
  
  for ii = 1:size(finalpontuacaosalas,1)
     
     #for fft = 1:size(finalpontuacaoprofessores,1)
     
    #for yu=1:1 #i de 1-14

                #jj=randperm(14,1); #LINHA
                tt=randperm(14,1); #LINHA
                ll=randperm(6,1); #COLUMA
                aa=randperm(6,1); #COLUMA
                cc=randi([0,1]);  #SORT 0 1
                
                  #if ((finalpontuacaosalas(ii,1)==jj && finalpontuacaosalas(ii,2)-1==oo(ll)) )#|| (finalpontuacaoprofessores(fft,1)==jj && finalpontuacaoprofessores(fft,2)-1==oo(ll)))
                          
                          jj=finalpontuacaosalas(ii,1);
                          oo(ll)=finalpontuacaosalas(ii,2)-1;
                          aux11=solucaoinicial(jj,oo(ll)-1:oo(ll)+1);

                              if mod(jj,2)==0 
            
                              if solucaoinicial(jj,oo(ll))~= -1 && solucaoinicial(jj-cc,oo(aa))~= -1
                                solucaoinicial(jj,oo(ll)-1:oo(ll)+1)=solucaoinicial(jj-cc,oo(aa)-1:oo(aa)+1);
                                solucaoinicial(jj-cc,oo(aa)-1:oo(aa)+1)=aux11;

                              endif  
                              
                             else
                              if solucaoinicial(jj,oo(ll))~= -1 && solucaoinicial(jj+cc,oo(aa))~= -1
                                solucaoinicial(jj,oo(ll)-1:oo(ll)+1)=solucaoinicial(jj+cc,oo(aa)-1:oo(aa)+1);
                                solucaoinicial(jj+cc,oo(aa)-1:oo(aa)+1)=aux11;

                              endif  
                           endif   
                                    
               #   endif      
                 
       # endfor
    #endfor      

endfor