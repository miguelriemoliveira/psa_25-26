% usar F5 para executar
clc % limpar o command window
clear all % limpar todas as variaveis da memoria
close all % limpar todas as figuras


% Fazer contas tipo máquina de calcular
% a = 8
% b = 65
% 
% c = a + b 
% 
% % para consultar todas as variaveis em memoria
% whos
% 
% figure
% plot([0, 5], [0,5], 'r-')

% python e matlab (implicita em termos de tipos de variavel) 
a = 7 % como o tipo não foi especificado fica double por defeito
b = 'ola' % variavel tipo texto

c = logical(1) % forçar uma variável explicitamente a ser Booleana

whos
clc

% Função para somar
a = 7
b = 3
c = somar(a,b) % chamada da função



% c = somar(a,b) % chamada da função
clc

%% Ex 1.1

% tipos double
a = 7
b = 5
r = psa_combine(a, b)

% tipos char (texto)
a = 'Viva'
b = 'PSA!'
r = psa_combine(a, b)


% tipos logical (Booleana)
a = logical(1)
b = logical(1)
r = psa_combine(a, b)


%% Ex 1.2

% Como guardar informação sobre três pessoas
% nome
% idade
% gosta_psa

%% Variaveis separadas
% nome1 = 'Inês';
% idade1 = 22;
% gosta_psa = logical(1);
% 
% nome2 = 'Nadia';
% idade2 = 21;
% gosta_psa = logical(1);
% 
% nome3 = 'Miguel';
% idade2 = 21;
% gosta_psa = logical(0);

%% Usar estruturas
clc
% Agrupar pessoa numa variavel
pessoa1.nome = 'Inês';
pessoa1.idade = 22;
pessoa1.gosta_psa = logical(1);

pessoa2.nome = 'Nadia';
pessoa2.idade = 21;
pessoa2.gosta_psa = logical(1);

pessoa3.nome = 'Miguel';
pessoa3.idade = 21;
pessoa3.gosta_psa = logical(0);

%% Usar arrays de estruturas

pessoa(1).nome = 'Inês';
pessoa(1).idade = 22;
pessoa(1).gosta_psa = logical(1);

pessoa(2).nome = 'Nadia';
pessoa(2).idade = 21;
pessoa(2).gosta_psa = logical(1);

pessoa(3).nome = 'Miguel';
pessoa(3).idade = 21;
pessoa(3).gosta_psa = logical(0);


%% como calcular a media das idades?

% para fazer isto dava mesmo jeito ter o vetor de idades
% Criar um vetor de idades a partir da estrutura pessoa só para fazer a
% conta da media das idades
vetor_idades = [pessoa(:).idade]
media_idades = mean(vetor_idades)

