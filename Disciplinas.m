#Descrição da codificação das Disciplinas
##1	Eletricidade I - EL1A1 TEÓRICA	T	2	CAMILA
##2	Tecnologia dos Materiais - TMAA1 TEÓRICA	T	2	PAULO
##3	Mecânica Técnica - META1 TEÓRICA	T	2	JUNIOR
##4	Geometria Aplicada - GEAA1 TEORICA	T	2	MATEMATICA
##5	Organização, Saúde e Segurança - OSSA1 TEÓRICA	T	2	JONNY
##6	Eletrônica Digital - ELDA1 TEÓRICA	T	2	SAMARA
##7	Eletricidade II - EL2A2 TEÓRICA/PRÁTICA	T/P	4	MARCELO
##8	Eletrônica Industrial - ELOA2  TEÓRICA/PRÁTICA	T/P	4	SAMARA
##9	Resistência dos Materiais- RESA2 TEÓRICA	T	2	ERICK
##10	Elementos de Máquinas - ELMA2 TEÓRICA	T	2	ERICK
##11	Tecnologias de Usinagem  -TUSA3 TEÓRICA	T	2	EDER
##12	Microcontroladores - MCRA3 PRÁTICA	P	2	BICA
##13	Mecânica dos Fluidos - MFLA3 TEÓRICA	T	2	WELLINGTON
##14	Ensaios Mecânicos - ENSA3  TEÓRICA	T	2	PAULO
##15	Planejamento de Projetos de Automação - PPAA3 TEÓRICA	T	2	WELLINGTON
##16	Controladores Lógicos Programáveis - CLPA3 PRÁTICA	P	2	JUNIOR
##17	Acionamentos Elétricos - ACEA3  TEÓRICA/PRÁTICA	T/P	2	SHIGUEO
##18	Sistemas de Manutenção - SMNA4  TEÓRICA	T	2	PAULO
##19	Robótica e CIM - RCMA4 TEÓRICA	T/P	2	JUNIOR
##20	Redes Industriais - RIDA4 PRÁTICA	P	2	BRUNO
##21	Sistemas Microcontrolados - SMRA4 PRÁTICA	P	2	ALEXANDRE
##22	Instrumentação Industrial - ITIA4 TEÓRICA	T	2	BRUNO
##23	Controle de Processos - COPA4 TEÓRICA	T	2	BRUNO
##24	Energias Alternativas e Desenvolvimento Sustentável - EADA4 TEÓRICA	T	2	PAULO
##25	Execução de Projetos de Automação - EPAA4 PRÁTICA	P	2	SHIGUEO
##26	Saúde e Segurança do Trabalho -SSTS1 TEÓRICA	T	2	ERICK
##27	Tecnologia dos Materiais - TCMS1 TEÓRICA	T	4	PAULO
##28	Eletricidade - Básica ELES1 TEÓRICA	T	2	MARCELO
##29	Metrologia - METS1 PRÁTICA	P	2	EDER
##30	Máquinas Elétricas - MAQS3 TEÓRICA	T	2	CAMILA
##31	Eletrônica Analógica - ELAS3 TEÓRICA	T	2	ALEXANDRE
##32	Análise de Sistemas Lineares -ASLS3 TEÓRICA	T	4	BRUNO
##33	Resistência dos Materiais - RESS3 TEÓRICA	T	2	ERICK
##34	Fenômenos dos Transportes - FETS3 TEÓRICA	T	4	WELLINGTON
##35	Tecnologias de Usinagem  -TUSS3 TEÓRICA	T	2	EDER
##36	Elementos de Máquinas ELMS3 TEÓRICA	T	2	PAULO
##37	Desenho Auxiliado por Computador - DACS3 PRÁTICA	P	2	JONNY
##38	Sistemas Microcontrolados - SMCS5 PRÁTICA	P	4	BICA
##39	Eletrônica de Potência - ELPS5 TEÓRICA/PRÁTICA	T/P	4	CAMILA
##40	Controladores Lógicos Programáveis - CLPS5  PRÁTICA	P	4	SHIGHEO
##41	Manufatura Auxiliada por Computador - MACS5 PRÁTICA	P	4	ERICK
##42	Sensores e Instrumentação - SEIS5 TEÓRICA/PRÁTICA	T/P	4	DANILO
##43	Planejamento de Projetos Mecatrônicos - PPMS5 PRÁTICA	P	4	DANILO
##44	Linguagem de prorgamação - PORA2 TEÓRICA/PRÁTICA	T/P	4	ZAMBON
##45	Empreendedorismo - EMPA3 TEÓRICA	T	2	ANA
##46	Gestão da qualidade - GEQA4 TEÓRICA	T	2	ELISANGELA
##47	História da ciência e tecnologia -  HCTS1 - TEÓRICA	T	2	RUBENS
##48	Fundamentos matemáticos - FMAS1 - TEÓRICA	T	4	ISMAEL
##49	Lógica de Programação LOPS1 - Teorica	T	2	LUCIANA
##------------------- DISCIPLINAS DOBRADAS --------------------------		
##101	Desenho Técnico - DETA1 PRÁTICA	P	JONNY	4
##	Eletrônica Digital - ELDA1 PRÁTICA	P	SAMARA	4
##103	Desenho Assistido por Computador - DACA2 PRÁTICA	P	JUNIOR	4
##	Pneumática e Hidráulica - PNHA2 PRÁTICA	P	WELLINGTON	4
##105	Eletricidade I - EL1A1 PRÁTICA	P	CAMILA	4
##	Lógica de Programação - LOPA1  PRÁTICA	P	LUCIANA	4
##107	Tecnologia de Usinagem - TUSA3 PRÁTICA	P	ÉDER	4
##	Eletropneumática e Eletrohidráulica - EPHA3 PRÁTICA	P	JUNIOR	4
##109	Eletricidade - Básica ELES1 PRÁTICA	P	MARCELO	4
##	Lógica de Programação LOPS1 - Pratica	P	LUCIANA	4
##111	Eletrônica Analógica - ELAS3 PRÁTICA	P	ALEXANDRE	4
##	Tecnologias de Usinagem  -TUSS3 PRÁTICA	P	EDER	4

aulascargas = dlmread('ArquivosExcel\AulasCarga.csv',';',1,0);
#aulascargas: DISCIPLINAS,quantidade de aulas, e seu semestre


b = size(aulascargas); #pega o tamanho 55x3 
c = b(1,1); # tamanho 55
d = aulascargas(c,1); # tamanho = 111

disciplinas= zeros(1,d); #disciplinas com zeros onde não tem, de 1 - 111
      for i=1:c;
          disciplinas(1,aulascargas(i,1))= aulascargas(i,2);
      endfor;
      #### aqui em cima ele atribui as colunas da aulacargas 1 com a coluna 2)
