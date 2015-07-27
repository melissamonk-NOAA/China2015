#V3.24U
#C  forecast file for China Rockfish
#C  with 2015/16 fixed catches
#C  2017 and beyond based on SPR-50%, 40-10, and P*=0.45 for category 2 ass
# essment
#
# for all year entries except rebuilder; enter either: actual year, -999 fo
# r styr, 0 for endyr, neg number for rel. endyr
1 # Benchmarks: 0=skip; 1=calc F_spr,F_btgt,F_msy
2 # MSY: 1= set to F(SPR); 2=calc F(MSY); 3=set to F(Btgt); 4=set to F(endy
# r)
0.5 # SPR target (e.g. 0.40)
0.4 # Biomass target (e.g. 0.40)
#_Bmark_years: beg_bio, end_bio, beg_selex, end_selex, beg_relF, end_relF (
# enter actual year, or values of 0 or -integer to be rel. endyr)
 0 0 0 0 0 0
1 #Bmark_relF_Basis: 1 = use year range; 2 = set relF same as forecast belo
# w
#
1 # Forecast: 0=none; 1=F(SPR); 2=F(MSY) 3=F(Btgt); 4=Ave F (uses first-las
# t relF yrs); 5=input annual F scalar
12 # N forecast years
1.0  # F scalar (only used for Do_Forecast==5)
#_Fcast_years:  beg_selex, end_selex, beg_relF, end_relF  (enter actual yea
# r, or values of 0 or -integer to be rel. endyr)
 -4 0 -4 0
1 # Control rule method (1=catch=f(SSB) west coast; 2=F=f(SSB) )
0.4 # Control rule Biomass level for constant F (as frac of Bzero, e.g. 0.4
# 0); (Must be > the no F level below)
0.1 # Control rule Biomass level for no F (as frac of Bzero, e.g. 0.10)
# multiplier below based on P*=0.45 and Category 2 Sigma = 0.72
# qlnorm(0.45, 0, 0.72) = 0.913
0.913 # Control rule target as fraction of Flimit (e.g. 0.75)
3   #_N forecast loops (1=OFL only; 2=ABC; 3=get F from forecast ABC catch 
# with allocations applied)
3   #_First forecast loop with stochastic recruitment
0 #_Forecast loop control #3 (reserved for future bells&whistles)
0 #_Forecast loop control #4 (reserved for future bells&whistles)
0 #_Forecast loop control #5 (reserved for future bells&whistles)
2025  #FirstYear for caps and allocations (should be after years with fixed
#  inputs)
0 # stddev of log(realized catch/target catch) in forecast (set value>0.0 t
# o cause active impl_error)
0 # Do West Coast gfish rebuilder output (0/1)
-1 # Rebuilder:  first year catch could have been set to zero (Ydecl)(-1 to
#  set to 1999)
-1 # Rebuilder:  year for current age structure (Yinit) (-1 to set to endye
# ar+1)
1 # fleet relative F:  1=use first-last alloc year; 2=read seas(row) x flee
# t(col) below
# Note that fleet allocation is used directly as average F if Do_Forecast=4
2 # basis for fcast catch tuning and for fcast catch caps and allocation  (
# 2=deadbio; 3=retainbio; 5=deadnum; 6=retainnum)
# Conditional input if relative F choice = 2
# Fleet relative F:  rows are seasons, columns are fleets
#_Fleet:  1_CA_SouthOf4010_Comm_Dead 2_CA_SouthOf4010_Comm_Live 3_CA_SouthO
# f4010_Rec_PC 4_CA_SouthOf4010_Rec_PR
#  0 0 0 0
# max totalcatch by fleet (-1 to have no max) must enter value for each fle
# et
-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
# max totalcatch by area (-1 to have no max); must enter value for each are
# a
-1
# fleet assignment to allocation group (enter group ID# for each fleet, 0 f
# or not included in an alloc group)
 0  0  0  0  0  0  0  0  0  0  0
#_Conditional on >1 allocation group
# allocation fraction for each of: 0 allocation groups
# no allocation groups
22 # Number of forecast catch levels to input (else calc catch from forecas
# t F)
2  # code means to read fleet/time specific basis (2=dead catch; 3=retained
#  catch; 99=F)  as below (units are from fleetunits; note new codes in SSV
# 3.20)
# Input fixed catch values
# these catches based on making the sum of northern and central models
# equal to the 2015/16 ACL contributions from John DeVore which are 6.6mt a
# nd 6.8mt
#Year Seas Fleet Catch
2015 1 1 0.02 # total for 2015: 4.64
2015 1 2 0.06
2015 1 3 0.06
2015 1 4 0.44
2015 1 5 0.48
2015 1 6 2.44
2015 1 7 0.12
2015 1 8 0.31
2015 1 9 0.02
2015 1 10 0.34
2015 1 11 0.35
#
2016 1 1 0.02 # total for 2016: 4.78
2016 1 2 0.06
2016 1 3 0.06
2016 1 4 0.45
2016 1 5 0.5
2016 1 6 2.52
2016 1 7 0.12
2016 1 8 0.32
2016 1 9 0.02
2016 1 10 0.35
2016 1 11 0.36
#
999 # verify end of input
