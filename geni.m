function [si, d] = geni(i, pr, n, SYC)
    % [indexes, degree] = generate indexes(symbol_index, degree, blocks_quantity)
    % Randomly get `degree` indexes, given the symbol index as a seed.

    % Generating with a seed allows saving only the seed (and the amount of degrees) not the whole array of indexes.
    % That saves memory, but also bandwidth when paquets(French) are sent.

    % The random indexes need to be unique because the decoding process uses dictionnaries for performance enhancements.
    % Additionnally, even if XORing one block with itself among with other is not a problem for the algorithm, it is better
    % to avoid uneffective operations like that.

    % To be sure to get the same random indexes, we need to pass
    if (SYC && i <= n) % n = blocks_quantity
        si = i;
        d = 1;  % degree
    else
        rng(i) % i = selection_indexes
        d = pr;
        si = randsample(n, pr); % (i)
    end
end