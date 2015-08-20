%% Generage an array that can illustrate the sample rate
% And According the sample rate to select the records
% Input : length, the length of the data set
%         p, the sample rate
% Out: An array, composed of 0 and 1 elements, in which the 1 means selected and 0 means not
function [ out ] = genSampleArray( length, p )

out = randperm(length);

flag = ceil(length * p);

for i = 1 : length
    if out(i) <= flag
        out(i) = 1;
    else
        out(i) = 0;
    end
end

end

