close all
clear
clc

% Population Size
pop_size = 100;

% Population Initialization
pop = zeros(pop_size,8);
for i = 1:pop_size
    pop(i,:) = randperm(8);
end

found = 0;
fits = zeros(100,1);
for iter = 1:1000
    
    if found == 1
        disp('Result is Found ...')
        show(result)
        result;
        break
    end
    
    % Parent Selection
    parents = parent_selection(pop,5,2);
    
    % Crossover
    children = crossover(parents);
    
    % Mutation
    p = rand();
    if p <= 0.8
        children = mutation(children);
    end
    
    % Survival Selection
    pop = survival_selection(pop, children);
    
    % Finding The Best Solution
    for i = 1:length(pop)
        fits(i) = fitness(pop(i,:));
        if fits(i) == 0
            result = pop(i,:);
            found = 1;
        end
    end
end
