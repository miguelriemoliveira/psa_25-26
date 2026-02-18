function s = movePlayer(s, i, vmax)

%% Simple case
% move player maintaining the same heading

if s(i).killed == 1 % if player is dead
    return % do not execute more instructions ( do not move)
end


%% Comportamento de caça (só para Inês)
if i == 3 %

    % Search for a prey
    % because Ines is a green player, preys will be blue
    prey_idx = -1;
    for k=1:size(s,2)% iterate all players
        if s(k).team == 2 % blue team 
            prey_idx = k;
            break % stop after finding first prey
        end
    end

    % move if there is a prey
    if prey_idx ~= -1

        xprey = s(prey_idx).x;
        yprey = s(prey_idx).y;
        x = s(i).x;
        y = s(i).y;

        angle2prey = atan2( yprey - y,  xprey - x);

        s(i).ang = angle2prey; % instatanteous turn to prey (agaisn the rules)
        % How to impelment a maximum angle change
        % delta_ang = angle2prey - s(i).ang;
        % if delta_ang > 10
        %     delta_ang = 10;
        % elseif delta_ang < -10
        %     delta_ang = -10;
        % end
        % 
        % s(i).ang = s(i).ang + delta_ang;

    end

    xnew = s(i).x + vmax * cos(s(i).ang);
    ynew = s(i).y + vmax * sin(s(i).ang);
    s(i).x = xnew;
    s(i).y = ynew;


%% Comportamento geral
else

    s(i).ang = s(i).ang + 10 *pi /180;

    xnew = s(i).x + vmax * cos(s(i).ang);
    ynew = s(i).y + vmax * sin(s(i).ang);
    s(i).x = xnew;
    s(i).y = ynew;

end