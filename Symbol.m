classdef Symbol

    properties  % slots
        ind     % index
        deg     % degree
        data; nes     % nighbors
    end

    methods
        function obj = Symbol(index, degree, data)
            obj.ind = index;    obj.deg = degree;   obj.data = data;
        end

        function log(obj, blocks_quantity, s)
            nrs = geni(obj.ind, obj.deg, blocks_quantity, s);
            fprintf("symbol %d, degree = %d\t %d\n", obj.ind, obj.deg, nrs)
        end
    end
end