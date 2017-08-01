function children = crossover(parents)
    % Crossover Function
    children = zeros(2,8);
    p = randi([2, 7]);
    children(1,1:p) = parents(1,1:p);
    children(2,1:p) = parents(2,1:p);
    idx = p+1;
    for i = p+1:8
        if ismember(parents(2,i),children(1,1:p))==0
            children(1,idx) = parents(2,i);
            idx = idx + 1;
        end
    end
    for i = 1:p
        if ismember(children(2,i),children(1,1:p))==0
            children(1,idx) = children(2,i);
            idx = idx + 1;
        end
    end
    
    idx = p+1;
    for i = p+1:8
        if ismember(parents(1,i),children(2,1:p))==0
            children(2,idx) = parents(1,i);
            idx = idx + 1;
        end
    end
    for i = 1:p
        if ismember(children(1,i),children(2,1:p))==0
            children(2,idx) = children(1,i);
            idx = idx + 1;
        end
    end
    
end