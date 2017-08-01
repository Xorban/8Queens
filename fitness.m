function out = fitness(chromosome)
    % This function returns fitness which equals by the number of gaurds
    
    % Transform the input chromosome into the chess field 
    field = zeros(8,8);
    for i = 1:8
        field(chromosome(i),i) = 1;
    end
    
    % Counting number of gaurds
    temp = zeros(8,8);
    for i = 1:8
        temp(i,:) = field(:,8+1-i);
    end
    out = 0;
    for i = -7:7
        res1 = sum(diag(field,i));
        res2 = sum(diag(temp,i));
        if res1 > 1
            out = out + res1;
        end
        if res2 > 1
            out = out + res2;
        end
    end
    
end