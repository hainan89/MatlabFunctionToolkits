%% For most of the ML algorithms, the training data should be normalized first before get training.
% Input: 
%   unit_up, the upper limit for the normalizing
%   unit_down, the lower limit for the normalizing
%   data_set, which need be normalized
% Output:
%   out, the normalization result
%   data_set_min, the minimum value in data_set
%   data_set_max, the maximum value in data_set         

function [ out, data_set_min, data_set_max ] = NormalizationGo(unit_up, unit_down, data_set)

data_set_min = min(min(data_set));
data_set_max = max(max(data_set));

out = unit_down + (data_set - data_set_min) ./ (data_set_max - data_set_min) .* (unit_up - unit_down);

end

