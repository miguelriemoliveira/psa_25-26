function r = psa_combine(a,b)

if (isa(a, "double") &&  isa(b, "double"))
    % Sao as duas do tipo double, multiplica
    r = a * b;
elseif (isa(a, "char") && isa(b, 'char'))
    % sao as duas do tipo texto
    r = [a '-' b];
elseif (isa(a, "logical") && isa(b, "logical"))
    % sao as duas do tipo logical -> fazer um and logico
    r = and(a,b);
end


