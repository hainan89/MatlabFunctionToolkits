%% Generate the training and test data set according to the sample probability
% Generally, the machine learing algorithms need randomly generated data set to train and test them.
% This function can select the records from given input data set according to predefined probability.
% Input: input_data, the whole data set which you can obtian.
%        sample_p, the ratio of the training data in the whole data set.
% Output: train_set, generated training data set according the sample_p.
%         test_set, except the training data, the reset of the data records are test data set.
function [ train_set, test_set ] = genTrainTestDataSet( input_data, sample_p )

sample_array = genSampleArray(size(input_data, 1), sample_p);

train_set = zeros(sum(sample_array), size(input_data, 2));
test_set = zeros(size(sample_array, 2) - sum(sample_array), size(input_data, 2));

sample_count = 1;
test_count = 1;
for s_i = 1 : size(sample_array, 2)
    if sample_array(1, s_i) == 1
        train_set(sample_count, :) = input_data(s_i, :);
        sample_count = sample_count + 1;
    else
        test_set(test_count, :) = input_data(s_i, :);
        test_count = test_count + 1;
    end
end

end % end fun

