function s = movePlayer(s, i, vmax)

if s(i).killed == 1 % dead people do not move (except zombies)
    return
end


if i == 1 %% first player will hunt

    %% Find a prey to hunt
    prey_j = -1;
    for j=1:size(s,2)

        if s(j).team == 1 % search for green players
            prey_j = j;
            break % stop searching for more preys
        end
    end

    % assume we always find a prey
    xprey = s(prey_j).x;
    yprey = s(prey_j).y;

    % Find angle to turn towards prey
    angle_to_prey = atan2( yprey - s(i).y , xprey - s(i).x);

    s(i).ang = angle_to_prey;

    %% move in the current direction
    xnew = s(i).x + vmax * cos(s(i).ang);
    ynew = s(i).y + vmax * sin(s(i).ang);

    s(i).x = xnew;
    s(i).y = ynew;

else



    %% Move to the left
    s(i).ang = s(i).ang - 10*pi/180;

    %% move in the current direction
    xnew = s(i).x + vmax * cos(s(i).ang);
    ynew = s(i).y + vmax * sin(s(i).ang);

    s(i).x = xnew;
    s(i).y = ynew;

end
