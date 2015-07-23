#V3.24u
#C China rockfish REVISED base model 7/7/15
1 #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern
# begin and end years of blocks
#
0.5     #_fracfemale
0       #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
        #_no additional input for selected M option; read 1P per morph
1       # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciific_K; 4=not implemented
0       #_Growth_Age_for_L1
30      #_Growth_Age_for_L2 (999 to use as Linf)
0       #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0       #_CV_Growth_Pattern: 0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1       #_maturity_option: 1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from wtatage.ss
#0       0       0       0       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1
#_placeholder for empirical age-maturity by growth pattern
1       #_First_Mature_Age
1       #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0       #_hermaphroditism option: 0=none; 1=age-specific fxn
2       #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
2       #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO    HI      INIT    PRIOR   PR_type SD   PHASE env-var use_dev dev_minyr dev_maxyr dev_SD Block Block_Fxn
# female growth
0.01    0.25    0.07   -2.94    3      0.53     -7      0       0       0       0       0       0       0       #       NatM_p_1_Fem_GP_1 (with prior from Owen)
0       10        2      2      -1      10      -2      0       0       0       0       0       0       0       #       L_at_Amin_Fem_GP_1
25      45      33      34      -1      10       6      0       0       0       0       0       0       0       #       L_at_Amax_Fem_GP_1
0.05    0.3     0.15    0.1     -1      0.8      6      0       0       0       0       0       0       0       #       VonBert_K_Fem_GP_1
0.01    0.2     0.1     0.1     -1      0.8     -6      0       0       0       0       0       0       0       #       CV_young_Fem_GP_1
0.03    0.2     0.1     0.1     -1      0.8      6      0       0       0       0       0       0       0       #       CV_old_Fem_GP_1
### male growth with absolute offsets = 0 (effectively single gender model)
-1     0.15    0     0      -1      0.8     -3      0       0       0       0       0       0       0       #       NatM_p_1_Mal_GP_1
-1     45      0     0      -1      10      -2      0       0       0       0       0       0       0       #       L_at_Amin_Mal_GP_1
-1     50      0     0      -1      10      -4      0       0       0       0       0       0       0       #       L_at_Amax_Mal_GP_1
-1     0.3     0     0      -1      0.8     -4      0       0       0       0       0       0       0       #       VonBert_K_Mal_GP_1
-1     0.25    0     0      -1      0.8     -3      0       0       0       0       0       0       0       #       CV_young_Mal_GP_1
-1     0.25    0     0      -1      0.8     -3      0       0       0       0       0       0       0       #       CV_old_Mal_GP_1
# female weight-length, maturity, and fecundity
0       1       1.17E-5 1.17E-5 -1      0.8     -3      0       0       0       0       0       0       0       #       Wtlen_1_Fem # converted to (cm,kg) from Lea et al. 1999
2       4       3.177   3       -1      0.8     -3      0       0       0       0       0       0       0       #       Wtlen_2_Fem # from Lea et al. 1999
1       100     27      27      -1      0.8     -3      0       0       0       0       0       0       0       #       Mat50%_Fem
-9      9       -1.0    0       -1      0.8     -3      0       0       0       0       0       0       0       #       Mat_slope_Fem
0      1       0.196    1       -1      0.8     -3      0       0       0       0       0       0       0       #       Eggs/kg_inter_Fem
0      1       0.0571   0       -1      0.8     -3      0       0       0       0       0       0       0       #       Eggs/kg_slope_wt_Fem
# male W-L
0       1       1.17E-5 1.17E-5 -1      0.8     -3      0       0       0       0       0       0       0       #       Wtlen_1_Mal # converted to (cm,kg) from Lea et al. 1999
2       4       3.177   3       -1      0.8     -3      0       0       0       0       0       0       0       #       Wtlen_2_Mal # from Lea et al. 1999

0       0       0       0       -1      0       -4      0       0       0       0       0       0       0       #       RecrDist_GP_1
0       0       0       0       -1      0       -4      0       0       0       0       0       0       0       #       RecrDist_Area_1
0       0       0       0       -1      0       -4      0       0       0       0       0       0       0       #       RecrDist_Seas_1
0       0       0       0       -1      0       -4      0       0       0       0       0       0       0       #       CohortGrowDev
#
#_Cond 0 #custom_MG-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-environ parameters
#
#_Cond 0 #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
3       #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm
#_LO    HI      INIT    PRIOR   PR_type SD      PHASE
4       7       5       4       -1      10       1      #       SR_LN(R0)
0.2     1       0.773   0.773    2      0.147   -3      #       SR_BH_steep
0       2       0.5     0.5     -1      0.8     -3      #       SR_sigmaR
-5      5       0.1     0       -1      1       -3      #       SR_envlink
-5      5       0       0       -1      1       -4      #       SR_R1_offset
0       0       0       0       -1      0       -9      #       SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev: 0=none; 1=devvector; 2=simple deviations
1971 # first year of main recr_devs; early devs can preceed this era
2001 # last year of main recr_devs; forecast devs start in following year
-2 #_recdev phase
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -4 #_recdev_early_phase
 -4 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 900 #_last_early_yr_nobias_adj_in_MPD
 1820 #_first_yr_fullbias_adj_in_MPD
 2001 #_last_yr_fullbias_adj_in_MPD
 2015 #_first_recent_yr_nobias_adj_in_MPD
 1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#
#Fishing Mortality info
0.2 # F ballpark for tuning early phases
-2001 # F ballpark year (neg value to disable)
3 # F_Method: 1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
2.9 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
5 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
0    1  0    0.01  -1      99 -1   # 1_CA_SouthOf4010_Comm_Dead
0    1  0    0.01  -1      99 -1   # 2_CA_SouthOf4010_Comm_Live
0    1  0    0.01  -1      99 -1   # 3_CA_SouthOf4010_Rec_PC
0    1  0    0.01  -1      99 -1   # 4_CA_SouthOf4010_Rec_PR
0    1  0    0.01  -1      99 -1   # 5_CA_SouthOf4010_Comm_Discard
#
#_Q_setup
# Q_type options: <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_nobiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked

#_Den-dep env-var extra_se Q_type
0        0        0        1 # 1_CA_SouthOf4010_Comm_Dead
0        0        0        1 # 2_CA_SouthOf4010_Comm_Live
0        0        1        1 # 3_CA_SouthOf4010_Rec_PC
0        0        0        1 # 4_CA_SouthOf4010_Rec_PR
0        0        0        1 # 5_CA_SouthOf4010_Comm_Discard
0        0        1        1 # 6_CA_SouthOf4010_Rec_PC_DWV_index
0        0        1        1 # 7_CA_SouthOf4010_Rec_PC_onboard_index
0        0        0        1 # 8_CA_SouthOf4010_CCFRP_comps_only
0        0        0        1 # 9_CA_SouthOf4010_Abrams_thesis_comps

# additive variance parms for indices
#_LO HI INIT PRIOR PR_type SD PHASE
0 2 0.5 1 -1 99 2 # extra sd index for fleet 3
0 2 0.5 1 -1 99 2 # extra sd index for "survey" 6
0 2 0.5 1 -1 99 2 # extra sd index for "survey" 7

#_Cond 0 #_If q has random component, then 0=read one parm for each fleet with random q; 1=read a parm for each year of index
#_Q_parms(if_any)
# LO HI INIT PRIOR PR_type SD PHASE
#
# Selectivity section
# Size-based setup
# A=Selex option: 1-24
# B=Do_retention: 0=no, 1=yes
# C=Male offset to female: 0=no, 1=yes, 2=Female offset to male
# D=Mirror selex (#)
# A B C D
 24 0 0 0 # 1_CA_SouthOf4010_Comm_Dead
 24 0 0 0 # 2_CA_SouthOf4010_Comm_Live
 24 0 0 0 # 3_CA_SouthOf4010_Rec_PC
 24 0 0 0 # 4_CA_SouthOf4010_Rec_PR
 24 0 0 0 # 5_CA_SouthOf4010_Comm_Discard
 24 0 0 0 # 6_CA_SouthOf4010_Rec_PC_DWV_index
#15 0 0 3 # 6_CA_SouthOf4010_Rec_PC_DWV_index
 15 0 0 3 # 7_CA_SouthOf4010_Rec_PC_onboard_index
#15 0 0 3 # 8_CA_SouthOf4010_CCFRP_comps_only
 24 0 0 0 # 8_CA_SouthOf4010_CCFRP_comps_only
 15 0 0 3 # 9_CA_SouthOf4010_Abrams_thesis_comps
#
#_age_selex_types
#_Pattern ___ Male Special
10        0       0    0      # 1_CA_SouthOf4010_Comm_Dead
10        0       0    0      # 2_CA_SouthOf4010_Comm_Live
10        0       0    0      # 3_CA_SouthOf4010_Rec_PC
10        0       0    0      # 4_CA_SouthOf4010_Rec_PR
10        0       0    0      # 5_CA_SouthOf4010_Comm_Discard
10        0       0    0      # 6_CA_SouthOf4010_Rec_PC_DWV_index
10        0       0    0      # 7_CA_SouthOf4010_Rec_PC_onboard_index
10        0       0    0      # 8_CA_SouthOf4010_CCFRP_comps_only
10        0       0    0      # 9_CA_SouthOf4010_Abrams_thesis_comps

# ALL SELEX ARE DOUBLE-NORMALS, SOME ARE FIXED AS ASYMPTOTIC
#_LO	HI	INIT	PRIOR	PR_type	SD	PHASE	env-var	use_dev	dev_minyr	dev_maxyr	dev_SD	Block	Block_Fxn
# 1_CA_SouthOf4010_Comm_Dead
19	45	28	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	5	-4	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 2_CA_SouthOf4010_Comm_Live
20	45	32	25	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	5	-4	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	3	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 3_CA_SouthOf4010_Rec_PC
19	45	26	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	5	-4	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 4_CA_SouthOf4010_Rec_PR
19	45	27	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	5	-4	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 5_CA_SouthOf4010_Comm_Discard
19	45	27	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	5	-8	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	3	8	-1	50	5	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	-8	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	-8	-8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 6_CA_SouthOf4010_Rec_PC_DWV_index
19	45	30	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	9	-8	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)
# 8_CA_SouthOf4010_CCFRP_comps_only
19	45	30	30	-1	50	4	0	0	0	0	0	0	0 # PEAK
-9	9	-8	-4	-1	50	-9	0	0	0	0	0	0	0 # TOP (logistic)
0	9	3	4	-1	50	5	0	0	0	0	0	0	0 # Asc WIDTH exp
0	9	8	8	-1	50	-9	0	0	0	0	0	0	0 # Desc WIDTH exp
-9	9	-8	-5	-1	50	-9	0	0	0	0	0	0	0 # INIT (logistic)
-9	9	8	5	-1	50	-9	0	0	0	0	0	0	0 # FINAL (logistic)

#_Cond 0 #_custom_sel-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
#_Cond 0 #_custom_sel-blk_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no block usage
#_Cond No selex parm trends
#_Cond -4 # placeholder for selparm_Dev_Phase
#_Cond 0 #_env/block/dev_adjust_method (1=standard; 2=logistic trans to keep in base parm bounds; 3=standard w/ no bound check)
#
# Tag loss and Tag reporting parameters go next
0 # TG_custom: 0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0 #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#F1 F2 F3 F4 F5 F6 F7 F8 F9
  0  0  0  0  0  0  0  0  0 #_add_to_survey_CV
  0  0  0  0  0  0  0  0  0 #_add_to_discard_stddev
  0  0  0  0  0  0  0  0  0 #_add_to_bodywt_CV
# 1  1  1  1  1  1  1  1  1 #_mult_by_lencomp_N
  0.4134  0.2527  0.2185  0.1412  0.2453  0.4895  1  0.76  1 #_mult_by_lencomp_N
  1  1  0.2919  1  1  1  1  1  0.30825 #_mult_by_agecomp_N
  1  1  1  1  1  1  1  1  1 #_mult_by_size-at-age_N
#
4 #_maxlambdaphase
1 #_sd_offset
#
0 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes: 1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch;
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey phase value sizefreq_method
# 1 2 2 1 1
# 4 2 2 1 1
# 4 2 3 1 1
#
# lambdas (for info only; columns are phases)
# 0 0 0 0 #_CPUE/survey:_1
# 1 1 1 1 #_CPUE/survey:_2
# 1 1 1 1 #_CPUE/survey:_3
# 1 1 1 1 #_lencomp:_1
# 1 1 1 1 #_lencomp:_2
# 0 0 0 0 #_lencomp:_3
# 1 1 1 1 #_agecomp:_1
# 1 1 1 1 #_agecomp:_2
# 0 0 0 0 #_agecomp:_3
# 1 1 1 1 #_size-age:_1
# 1 1 1 1 #_size-age:_2
# 0 0 0 0 #_size-age:_3
# 1 1 1 1 #_init_equ_catch
# 1 1 1 1 #_recruitments
# 1 1 1 1 #_parameter-priors
# 1 1 1 1 #_parameter-dev-vectors
# 1 1 1 1 #_crashPenLambda
0 # (0/1) read specs for more stddev reporting
# 1 1 -1 5 1 5 1 -1 5 # selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
# 5 15 25 35 43 # vector with selex std bin picks (-1 in first bin to self-generate)
# 1 2 14 26 40 # vector with growth std bin picks (-1 in first bin to self-generate)
# 1 2 14 26 40 # vector with NatAge std bin picks (-1 in first bin to self-generate)
999
