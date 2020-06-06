function x = emailFeatures(word_indices)

n = 1899; %  number of words in dictionary

_ = eye(n)(word_indices,:);

x = sum(_,1)';

x = x > 0;

end
