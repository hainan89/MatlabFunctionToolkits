%% The inverse process for the normalization
% Input:
%   unit_up, the upper limit for the normalization process has adopted
%   unit_down, the lower limit for the normalization process has adopted
%   min, the minimum value in the original data set
%   max, the maximum value in the orginal data set
%   data_set, the input data set which has been normalized
% Output:
%   out, the result of the inverse process
function [ out ] = NormalizationBack( unit_up, unit_down, min, max, data_set )

out = min + (data_set - unit_down) ./ (unit_up - unit_down) .* (max - min);

end

