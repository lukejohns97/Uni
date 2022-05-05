% Find the number of all sentimentScore equal to 0: either not found or neutral

ZeroVal = sum(sentimentScore == 0);

% Find all 'distinct' values (either -1 or 1)

covered = numel(sentimentScore) - ZeroVal;

fprintf("Total of positive and negative classes (coverage): %2.2f%%, Distinct %d, Not Found or Neutral: %d\n", (covered * 100)/numel(sentimentScore), covered, ZeroVal); 

%calculate tp 

tp = sentimentScore((sentimentScore==1) & ( actualScore==1));
tn = sentimentScore((sentimentScore  < 0) &( actualScore == 0));

%Calculate accuracy
%Multiplying by 100 gives the percentage.

acc = (numel(tp) + numel(tn))*100/covered;
fprintf("Accuracy: %2.2f%%, TP: %d, TN: %d\n", acc, numel(tp), numel(tn)); figure



% The confusion matrix
%confusionchart(actualScore, sentimentScore); 
