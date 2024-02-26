load(models).
use_packs(0).
resume(off).
sampling_strategy(none).
classes([pos,neg]).  %default
output_options([c45_probab,prolog,roc01,likelihood]).
%_probab=the probabilities of the classes are shown in the leaves.
%writes the ROC-curve for the predictions made and computes the area under the ROC-curve (AUC).

rmode(race(-R)).
rmode(gender(-G)).
rmode(typeofoutcome_updated(-T)).