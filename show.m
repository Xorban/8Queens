function show(chrom)

    ground = [1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1];

    items = zeros(8,8);
    for i = 1:8
        items(chrom(i),i) = 5;
    end
        
    board = ground+items;
    board(board>5) = 5;
    imagesc(board)
    axis equal
end