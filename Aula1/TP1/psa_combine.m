function resultado = psa_combine(a,b)


if (isa(a, "double") && isa(b, "double"))
    % Se a e b forem double, multiplica (a*b)
    resultado = a * b;

elseif (isa(a, 'char') && isa(b, 'char'))
    % Se a e b foram texto, concatena  (a-b)
    resultado = [a '-' b]; % juntar texto em matlab

else
    disp('Variaveis de tipo desconhecido')
    resultado = -1;
end


