% usar F5 para executar
clc % limpar o command window
clear all % limpar todas as variaveis da memoria
close all % limpar todas as figuras

%% Desenhar a Arena

plot([-10, 10, 10, -10, -10], ...
     [10, 10, -10, -10, 10], ...
     '--k')
axis([-12 12 -12 12])
hold on;

%% Parâmetros do jogo
vmax = 0.6;

%% Criar as equipas
i = 0;

i = i + 1;
s(i).name = 'Francisco';
s(i).team = 'red';
s(i).color = [1 0 0];
s(i).x = rand * 16 -8;
s(i).y = rand * 16 -8;
s(i).ang = rand*2*pi;
s(i).killed = 0;

i = i + 1;
s(i).name = 'Francisca';
s(i).team = 'red';
s(i).color = [1 0 0];
s(i).x = rand * 16 -8 ;
s(i).y = rand * 16 -8;
s(i).ang = rand*2*pi;
s(i).killed = 0;


i = i + 1;
s(i).name = 'Matilde';
s(i).team = 'green';
s(i).color = [0 0.5 0];
s(i).x = rand * 16 -8;
s(i).y = rand * 16 -8;
s(i).ang = rand*2*pi;
s(i).killed = 0;

i = i + 1;
s(i).name = 'João';
s(i).team = 'blue';
s(i).color = [0 0 1];
s(i).x = rand * 16 -8 ;
s(i).y = rand * 16 -8;
s(i).ang = rand*2*pi;
s(i).killed = 0;

%% Desenhar jogadores na posição inicial
for i=1:size(s,2) % size(s,2) dá o número de jogadores
    s(i).hcircle = plot(s(i).x, s(i).y, 'o', 'Color', s(i).color, 'MarkerSize', 12);
    s(i).htext = text(s(i).x, s(i).y + 0.5, s(i).name);
    s(i).harrow = plot([s(i).x, s(i).x +  vmax * cos(s(i).ang)], ...
        [s(i).y, s(i).y +  vmax * sin(s(i).ang)], '-', 'Color', s(i).color);
end

%% JOGO __________________________________________________
for k=1:50


    %% Movimentar Jogadores
    for i=1:size(s,2) % size(s,2) dá o número de jogadores
        s = movePlayer(s, i, vmax);
    end

    %% Jogador fora da arena
    % matar jogador que saiu fora da arena

    %% Jogador que caça outro

    %% Desenhar jogadores
    for i=1:size(s,2) % size(s,2) dá o número de jogadores
        set(s(i).hcircle, 'XData', s(i).x , 'YData', s(i).y)

        xtip = s(i).x +  vmax * cos(s(i).ang);
        ytip = s(i).y +  vmax * sin(s(i).ang);
        set(s(i).harrow,  'XData', [s(i).x, xtip] , ...
            'YData', [s(i).y, ytip])
      
        set(s(i).htext, 'Position', [s(i).x, s(i).y+0.5, 0]);
        if s(i).killed == 1
            set(s(i).htext, 'String', [s(i).name ' (killed)']);
        end

         
        
    end

    pause
end