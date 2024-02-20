:-use_module(library(pascal)).

:- if(current_predicate(use_rendering/1)).
:- use_rendering(c3).
:- use_rendering(pic).
:- endif.

:-pascal.

:-set_pascal(examples,keys(patient)).
:-set_pascal(default_parameters,0).
:-set_pascal(learning_algorithm,gradient_descent).
:-set_pascal(learning_rate,fixed(0.5)).
:-set_pascal(regularizing_constant,5).
:-set_pascal(regularization,2).

:-set_pascal(gd_iter,50).
:-set_pascal(fixed_parameters,no).
:-set_pascal(epsilon_em,0.0001).
:-set_pascal(epsilon_em_fraction,0.0001).
:-set_pascal(max_length,8).
:-set_pascal(max_lengths,[3,3,3,3]).
:-set_pascal(max_nodes, 10). 
:-set_pascal(beamsize, 10).
:-set_pascal(min_accuracy,0.5).
:-set_pascal(max_rules,8).
:-set_pascal(max_length,5).
:-set_pascal(verbosity,3).


fold(all,F):-
  fold(train,FTr),
  fold(test,FTe),
  append(FTr,FTe,F).

%stratification: TRAIN: 427 TEST: 184 
%TRAIN pos: 91 neg: 336
%TEST pos: 39 neg: 145
%TRAIN perc pos 0.213% perc neg 0.787%

fold(train, [it_0003_000516, it_0017_003754, it_0153_004772, it_0154_004788, it_0153_004773]).

fold(test, [it_0153_004775, it_0039_000388, it_0166_005093, it_0143_003919, it_0152_004891]). 

modeb(1,numberdoses(-#numdose)).
modeb(1,mobcat(-#mcat)).
modeb(1,pa3mcat(-#pa3)).
modeb(1,totndrugs(-#totdr)).
modeb(1,mmsumrev(-#comob)).
modeb(1,antis_0(-#anti0)).
modeb(1,antis_2(-#anti2)).
modeb(1,antis_6(-#anti3)).
modeb(1,deltaantis02(-#delanti02)).
modeb(1,deltaantis26(-#delanti26)).
modeb(1,who_f1(-#who1)).
modeb(1,who_f2(-#who2)).
modeb(1,who_f3(-#who3)).

modeb(1,numberdoses(-numdose)).
modeb(1,mobcat(-mcat)).
modeb(1,pa3mcat(-pa3)).
modeb(1,totndrugs(-totdr)).
modeb(1,mmsumrev(-comob)).
modeb(1,antis_0(-anti0)).
modeb(1,antis_2(-anti2)).
modeb(1,antis_6(-anti3)).
modeb(1,deltaantis02(-delanti02)).
modeb(1,deltaantis26(-delanti26)).
modeb(1,who_f1(-who1)).
modeb(1,who_f2(-who2)).
modeb(1,who_f3(-who3)).
modeb(1, typeofoutcome_updated(-#outcome)).


modeb(1,frailty).
modeb(1,poornut).
modeb(1,oad).
modeb(1,hta).
modeb(1,cvd).
modeb(1,chrrespdis).
modeb(1,depress).
modeb(1,cogdis).
modeb(1,anxiety).
modeb(1,hd).

modeh(1,numberdoses(-#numdose)).
modeh(1,mobcat(-#mcat)).
modeh(1,pa3mcat(-#pa3)).
modeh(1,totndrugs(-#totdr)).
modeh(1,mmsumrev(-#comob)).
modeh(1, typeofoutcome_updated(-#outcome)).

modeh(1,numberdoses(-numdose)).
modeh(1,mobcat(-mcat)).
modeh(1,pa3mcat(-pa3)).
modeh(1,totndrugs(-totdr)).
modeh(1,mmsumrev(-comob)).
modeh(1, typeofoutcome_updated(-outcome)).


%patient: it-0003-000516 index:129
gender(it_0003_000516,m).
race(it_0003_000516,white).
mobcat(it_0003_000516,5).
pa3mcat(it_0003_000516,4).
numberdoses(it_0003_000516,3).
totndrugs(it_0003_000516,3).
poornut(it_0003_000516).
oad(it_0003_000516).
hta(it_0003_000516).
chrrespdis(it_0003_000516).
cogdis(it_0003_000516).
mmsumrev(it_0003_000516,3).
antis_0(it_0003_000516,4.81).
antis_2(it_0003_000516,269.0).
antis_6(it_0003_000516,21.3).
deltaantis02(it_0003_000516,264.19).
deltaantis26(it_0003_000516,-247.7).
who_f1(it_0003_000516,0).
who_f2(it_0003_000516,0).
who_f3(it_0003_000516,0).
who_f4(it_0003_000516,0).
typeofoutcome_updated(it_0003_000516,1).
patient(it_0003_000516,pos).

%patient: it-0017-003754 index:525
gender(it_0017_003754,m).
race(it_0017_003754,white).
mobcat(it_0017_003754,1).
pa3mcat(it_0017_003754,4).
numberdoses(it_0017_003754,2).
totndrugs(it_0017_003754,8).
frailty(it_0017_003754).
oad(it_0017_003754).
hta(it_0017_003754).
cvd(it_0017_003754).
af(it_0017_003754).
pad(it_0017_003754).
depress(it_0017_003754).
hd(it_0017_003754).
mmsumrev(it_0017_003754,7).
antis_0(it_0017_003754,4.81).
antis_2(it_0017_003754,2040.0).
deltaantis02(it_0017_003754,2035.19).
who_f1(it_0017_003754,0).
who_f2(it_0017_003754,0).
typeofoutcome_updated(it_0017_003754,5).
patient(it_0017_003754,neg).

%patient: it-0153-004772 index:140
gender(it_0153_004772,f).
race(it_0153_004772,white).
numberdoses(it_0153_004772,3).
antis_0(it_0153_004772,4.81).
antis_2(it_0153_004772,3070.0).
antis_6(it_0153_004772,578.0).
antis_12(it_0153_004772,29500.0).
deltaantis02(it_0153_004772,3065.19).
deltaantis26(it_0153_004772,-2492.0).
deltaantis612(it_0153_004772,28922.0).
who_f1(it_0153_004772,0).
who_f2(it_0153_004772,0).
who_f3(it_0153_004772,0).
who_f4(it_0153_004772,0).
typeofoutcome_updated(it_0153_004772,2).
patient(it_0153_004772,neg).

%patient: it-0154-004788 index:543
gender(it_0154_004788,m).
race(it_0154_004788,white).
numberdoses(it_0154_004788,2).
antis_0(it_0154_004788,4.81).
typeofoutcome_updated(it_0154_004788,9).
patient(it_0154_004788,neg).

%patient: it-0153-004773 index:1
gender(it_0153_004773,m).
race(it_0153_004773,white).
numberdoses(it_0153_004773,2).
antis_0(it_0153_004773,4.81).
who_f1(it_0153_004773,0).
typeofoutcome_updated(it_0153_004773,1).
patient(it_0153_004773,pos).

%patient: it-0153-004775 index:6
gender(it_0153_004775,f).
race(it_0153_004775,white).
numberdoses(it_0153_004775,2).
antis_0(it_0153_004775,4.81).
antis_2(it_0153_004775,207.0).
deltaantis02(it_0153_004775,202.19).
who_f1(it_0153_004775,0).
who_f2(it_0153_004775,0).
typeofoutcome_updated(it_0153_004775,1).
patient(it_0153_004775,pos).

%patient: it-0039-000388 index:560
gender(it_0039_000388,f).
race(it_0039_000388,white).
mobcat(it_0039_000388,3).
pa3mcat(it_0039_000388,4).
numberdoses(it_0039_000388,2).
totndrugs(it_0039_000388,4).
oad(it_0039_000388).
cvd(it_0039_000388).
cogdis(it_0039_000388).
hd(it_0039_000388).
mmsumrev(it_0039_000388,4).
antis_0(it_0039_000388,4.81).
antis_2(it_0039_000388,14.0).
deltaantis02(it_0039_000388,9.19).
who_f1(it_0039_000388,0).
who_f2(it_0039_000388,0).
typeofoutcome_updated(it_0039_000388,9).
patient(it_0039_000388,neg).

%patient: it-0166-005093 index:322
gender(it_0166_005093,f).
mobcat(it_0166_005093,3).
pa3mcat(it_0166_005093,1).
numberdoses(it_0166_005093,3).
totndrugs(it_0166_005093,6).
cvd(it_0166_005093).
depress(it_0166_005093).
cogdis(it_0166_005093).
mmsumrev(it_0166_005093,1).
antis_0(it_0166_005093,63.1).
antis_2(it_0166_005093,28400.0).
antis_6(it_0166_005093,1800.0).
antis_12(it_0166_005093,1800.0).
deltaantis02(it_0166_005093,28336.9).
deltaantis26(it_0166_005093,-26600.0).
deltaantis612(it_0166_005093,0.0).
who_f1(it_0166_005093,0).
who_f2(it_0166_005093,0).
who_f3(it_0166_005093,0).
who_f4(it_0166_005093,0).
typeofoutcome_updated(it_0166_005093,2).
patient(it_0166_005093,neg).

%patient: it-0143-003919 index:81
gender(it_0143_003919,f).
race(it_0143_003919,white).
mobcat(it_0143_003919,1).
pa3mcat(it_0143_003919,4).
numberdoses(it_0143_003919,2).
totndrugs(it_0143_003919,6).
frailty(it_0143_003919).
depress(it_0143_003919).
epilepsia(it_0143_003919).
mmsumrev(it_0143_003919,3).
antis_0(it_0143_003919,4.81).
antis_2(it_0143_003919,1050.0).
deltaantis02(it_0143_003919,1045.19).
who_f1(it_0143_003919,0).
who_f2(it_0143_003919,0).
who_f3(it_0143_003919,4).
typeofoutcome_updated(it_0143_003919,1).
patient(it_0143_003919,pos).

%patient: it-0152-004891 index:165
gender(it_0152_004891,f).
race(it_0152_004891,white).
numberdoses(it_0152_004891,2).
totndrugs(it_0152_004891,3).
depress(it_0152_004891).
anxiety(it_0152_004891).
mmsumrev(it_0152_004891,2).
antis_0(it_0152_004891,4.81).
antis_2(it_0152_004891,1130.0).
antis_6(it_0152_004891,310.0).
antis_12(it_0152_004891,32300.0).
deltaantis02(it_0152_004891,1125.19).
deltaantis26(it_0152_004891,-820.0).
deltaantis612(it_0152_004891,31990.0).
who_f2(it_0152_004891,0).
who_f3(it_0152_004891,0).
who_f4(it_0152_004891,0).
typeofoutcome_updated(it_0152_004891,2).
patient(it_0152_004891,neg).