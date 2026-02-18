% usar F5 para executar
clc % limpar o command window
clear all % limpar todas as variaveis da memoria
close all % limpar todas as figuras


% plot(x ou array de xx, y ou array de ys, tipo de marcador e a cor)

%handle gráfico
h = plot(5,5, '+r');
hold on% permite desenhar sem perder o que já estava desenhado

plot([0, 5], [2,2], 'b--')

%axis([xmin, xmax ymin ymax])
axis([-2 7 -2 7])

disp('Espera dois segundos')
pause(2)

set(h, 'MarkerSize', 26)


