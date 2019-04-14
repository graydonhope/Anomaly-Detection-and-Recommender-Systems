function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;
validation_examples = size(pval, 1);

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
   true_positives = 0;
   false_positives = 0;
   false_negatives = 0;
   for i = 1:validation_examples
     
     if (pval(i) < epsilon)
       % Should be anomalous
       
       if (yval(i) == 1) 
         % It is anomalous!
         true_positives++ ;
       elseif (yval(i) == 0)
         % Isn't actually anomalous.. 
         false_positives++;
       endif
       
     elseif ( (yval(i) == 1) && pval(i) >= epsilon)
       % Is anomalous but didn' catch it
       false_negatives++;
     endif
   endfor
   
   precision = true_positives / (true_positives + false_positives);
   recall = true_positives / (true_positives + false_negatives);
   
   F1 = ((2 * precision * recall) / (precision + recall));
   
   true_positives = 0;
   false_negatives = 0;
   false_positives = 0;

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
