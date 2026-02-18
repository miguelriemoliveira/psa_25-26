clc % Limpar o command window
clear all % limpar todas as variaveis da memoria
close all % fechar todas as figuras

% em linguagem c 
% int c = 7;

% em linguagem python 
% c = 7

% em matlab 
% c = 7

%Se nada disseres é um double por defeito
c = 7; % variaveis do tipo double
c_int = uint8(7); % variaveis inteiras
c_bool = logical(1); % variaveis  Booleanas
c_string = 'Olá turma TP1!';


% whos

% 
% a = 7
% b = 5
% c = 3
% 
% 
% a + b + c
% 
% figure
% plot([0, 5], [1, 6], 'r-')

%Funções e scope de variaveis

% Vamos somar a e b

a = 5;
b = 3;

resultado = somar(a, b);

%% 

a_double = 5;
b_double = 6;

resultado = psa_combine(a_double, b_double)

a_char = 'ola malta'
b_char = 'tudo bem?'

resultado = psa_combine(a_char, b_char)