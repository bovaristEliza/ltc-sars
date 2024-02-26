load(models).
%use_packs(0).
resume(off).
sampling_strategy(none).
classes([pos,neg]).  %default
output_options([c45_probab,prolog,roc01,likelihood]).
%_probab=the probabilities of the classes are shown in the leaves.
%writes the ROC-curve for the predictions made and computes the area under the ROC-curve (AUC).

rmode(race(-K,-R)).
rmode(gender(-K,-G)).
rmode(typeofoutcome_updated(-K,-T)).
rmode(numberdoses(-K,-N)).
rmode(mobcat(-K, -M)).
rmode(pa3mcat(-K, -P)).
rmode(totndrugs(-K, -D)).
rmode(mmsumrev(-K, -S)).
rmode(antis_0(-K, -A)).
rmode(antis_2(-K, -B)).
rmode(antis_6(_K, -C)).
rmode(antis_12(-K, -E)).

