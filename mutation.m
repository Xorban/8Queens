function children = mutation(chroms)
    % Mutation Function
    for i = 1:2
        a = randi([1, 8]);
        b = randi([1, 8]);
        tmp = chroms(i,a);
        chroms(i,a) = chroms(i,b);
        chroms(i,b) = tmp;
    end
    children = chroms;
end