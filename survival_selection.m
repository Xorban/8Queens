function selected = survival_selection(population, children)
    % This function returns the new population by replcing the worst ones
    fits = zeros(1,length(population));
    for i = 1:length(population)
        fits(i) = fitness(population(i,:));
    end
    [values idx] = sort(fits);
    population(idx(end-1),:) = children(1,:);
    population(idx(end),:)   = children(2,:);
    selected = population;
end