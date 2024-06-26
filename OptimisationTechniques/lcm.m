%Phase 1: Input data
clc
clear all
cost = [11 20 7 8; 21 16 10 12; 8 12 18 9]
A = [50 40 70]
B = [30 25 35 40]

%Phase 2: Check balanced/unbalanced
if sum(A) == sum(B)
    fprintf('Given transportation problem is balanced')
else
    fprintf('Given transportation problem is unbalanced')
    if sum(A) < sum(B)
        cost(end+1, :) = zeros(size(B, 2), 1)
        A(end+1) = sum(B)-sum(A)
        
    else
            cost(:, end+1) = zeros(size(A, 2), 1)
            B(end+1) = sum(A)-sum(B)
    end
end

ICost = cost
X = zeros(size(cost))
m = size(cost, 1)
n = size(cost, 2)
BFS = m+n-1

%Phase 3: Finding cells with minimum cost and allocations
for i=1 : size(cost, 1)
    for j=1: size(cost, 2)
        hh = min(cost(:))
        [row_index, col_index] = find(hh == cost)
        x11 = min(A(row_index), B(col_index))
        [value, index] = max(x11)
        ii = row_index(index)
        jj = col_index(index)
        y11 = min(A(ii), B(jj))
        X(ii, jj) = y11
        A(ii) = A(ii) - y11
        B(jj) = B(jj) - y11
        cost(ii, jj) = inf
    end
end

%Phase 4: Check Degenerate/Non-degenerate
Total_BFS = length(nonzeros(X))
if Total_BFS == BFS
    fprintf('Initial BFS is non-degenerate\n')
else
    fprintf('Initial BFS is degenerate\n')
end

%Phase 5: Compute the cost
Initial_Cost = sum(sum(ICost.*X))
fprintf('Initial BFS Cost is = %d\n', Initial_Cost)