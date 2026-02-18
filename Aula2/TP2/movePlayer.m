function s = movePlayer(s, i, vmax)

%% Simple case
% move player maintaining the same heading

if s(i).killed == 1 % if player is dead
    return % do not execute more instructions ( do not move)
end


s(i).ang = s(i).ang + 10 *pi /180;

xnew = s(i).x + vmax * cos(s(i).ang);
ynew = s(i).y + vmax * sin(s(i).ang);
s(i).x = xnew;
s(i).y = ynew;