function selected = parent_selection(population,N,K)
    % This function returns the selected parents
    all_selected = population(randperm(8,N),:);
    fits = zeros(1,N);
    for i = 1:N
        fits(i) = fitness(all_selected(i,:));
    end
    [values idx] = sort(fits);
    selected = population(idx(1:K),:);
end