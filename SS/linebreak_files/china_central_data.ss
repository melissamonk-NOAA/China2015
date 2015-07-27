#V3.24u
#C data file for China rockfish North of 4010 to OR/WA border
#C changed from pre-star draft base by adding length comps from CA north of
#  40-10
#
#_observed data:
1900 #_styr -- extended to match southern model start year
2014 #_endyr
1 #_nseas
12 #_months/season
1  #_spawn_seas
11 #_Nfleet
1  #_Nsurveys
1  #_N_areas
## fleet names (second cut on June 7, 2015)
1_CA_NorthOf4010_Comm_Dead%2_CA_NorthOf4010_Comm_Live%3_CA_NorthOf4010_Rec_
PC%4_CA_NorthOf4010_Rec_PR%5_OR_SouthernOR_Comm_Dead%6_OR_SouthernOR_Comm_L
ive%7_OR_SouthernOR_Rec_PC%8_OR_SouthernOR_Rec_PR%9_OR_NorthernOR_Comm%10_O
R_NorthernOR_Rec_PC%11_OR_NorthernOR_Rec_PR%12_OR_SouthernOR_Rec_PC_ORBS
## 1_CA_NorthOf4010_Comm_Dead
## 2_CA_NorthOf4010_Comm_Live
## 3_CA_NorthOf4010_Rec_PC
## 4_CA_NorthOf4010_Rec_PR
## 5_OR_SouthernOR_Comm_Dead
## 6_OR_SouthernOR_Comm_Live
## 7_OR_SouthernOR_Rec_PC
## 8_OR_SouthernOR_Rec_PR
## 9_OR_NorthernOR_Comm
## 10_OR_NorthernOR_Rec_PC
## 11_OR_NorthernOR_Rec_PR
## 12_OR_SouthernOR_Rec_PC_ORBS
# following values are 1 per catch or survey fleet
0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 #_surveytiming_in_season --
#  mid-year, not exactly like XDB-SRA
  1   1   1   1   1   1   1   1   1   1   1   1   #_area_assignments_for_ea
# ch_fishery_and_survey
# following values are 1 per catch fleet
  1   1   1   1   1   1   1   1   1   1   1 #_units of catch:  1=bio; 2=num
0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 #_se of log(catch) only used fo
# r init_eq_catch and for Fmethod 2 and 3; use -1 for discard only fleets
2 #_Ngenders
80 #_Nages
  0   0   0   0   0   0   0   0   0   0   0  #_init_equil_catch_for_each_fi
# shery
115 #_N_lines_of_catch_to_read
#_catch_biomass(mtons):_columns_are_fisheries,year,season
# this file has catch in SS format based on formulas in the adjacent Google
#  Doc "Catch Pivot" worksheet
 #_fleet1 fleet2 fleet3 fleet4 fleet5 fleet6 fleet7 fleet8 fleet9 fleet10 f
# leet11 year seas
     0      0      0      0      0.01   0      0      0      0.01    0     
  0    1900    1
     0      0      0      0      0      0      0      0      0       0     
  0    1901    1
     0      0      0      0      0      0      0      0      0       0     
  0    1902    1
     0      0      0      0      0      0      0      0      0       0     
  0    1903    1
     0      0      0      0      0      0      0      0      0       0     
  0    1904    1
     0      0      0      0      0      0      0      0      0       0     
  0    1905    1
     0      0      0      0      0      0      0      0      0       0     
  0    1906    1
     0      0      0      0      0      0      0      0      0       0     
  0    1907    1
     0      0      0      0      0      0      0      0      0       0     
  0    1908    1
     0      0      0      0      0      0      0      0      0       0     
  0    1909    1
     0      0      0      0      0      0      0      0      0       0     
  0    1910    1
     0      0      0      0      0      0      0      0      0       0     
  0    1911    1
     0      0      0      0      0      0      0      0      0       0     
  0    1912    1
     0      0      0      0      0      0      0      0      0       0     
  0    1913    1
     0      0      0      0      0      0      0      0      0       0     
  0    1914    1
     0      0      0      0      0      0      0      0      0       0     
  0    1915    1
     0      0      0      0      0      0      0      0      0       0     
  0    1916    1
     0      0      0      0      0      0      0      0      0       0     
  0    1917    1
     0      0      0      0      0      0      0      0      0       0     
  0    1918    1
     0      0      0      0      0      0      0      0      0       0     
  0    1919    1
     0      0      0      0      0      0      0      0      0       0     
  0    1920    1
     0      0      0      0      0      0      0      0      0       0     
  0    1921    1
     0      0      0      0      0      0      0      0      0       0     
  0    1922    1
     0      0      0      0      0      0      0      0      0       0     
  0    1923    1
     0      0      0      0      0      0      0      0      0       0     
  0    1924    1
     0      0      0      0      0      0      0      0      0       0     
  0    1925    1
     0      0      0      0      0      0      0      0      0       0     
  0    1926    1
     0      0      0      0      0      0      0      0      0       0     
  0    1927    1
     0      0      0      0      0      0      0      0      0       0     
  0    1928    1
     0.01   0      0      0.01   0.01   0      0      0      0.01    0     
  0    1929    1
     0.01   0      0      0.01   0.01   0      0      0      0.01    0     
  0    1930    1
     0      0      0      0.01   0      0      0      0      0       0     
  0    1931    1
     0.03   0      0      0.01   0      0      0      0      0       0     
  0    1932    1
     0.09   0      0      0.01   0      0      0      0      0       0     
  0    1933    1
     0.99   0      0      0.01   0      0      0      0      0       0     
  0    1934    1
     0.82   0      0.01   0.01   0      0      0      0      0       0     
  0    1935    1
     1.23   0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1936    1
     0.78   0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1937    1
     3.08   0      0.01   0.02   0      0      0      0      0       0     
  0    1938    1
     5.95   0      0.01   0.02   0      0      0      0      0       0     
  0    1939    1
     3.52   0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1940    1
     0.99   0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1941    1
     0.72   0      0      0.01   0.01   0      0      0      0.01    0     
  0    1942    1
     0.02   0      0      0.01   0.04   0      0      0      0.04    0     
  0    1943    1
     0      0      0      0.01   0.01   0      0      0      0.01    0     
  0    1944    1
     0      0      0      0.01   0.04   0      0      0      0.04    0     
  0    1945    1
     0.06   0      0.01   0.02   0.05   0      0      0      0.05    0     
  0    1946    1
     0.08   0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1947    1
     0.09   0      0.01   0.03   0.01   0      0      0      0.01    0     
  0    1948    1
     0.01   0      0.01   0.04   0.07   0      0      0      0.07    0     
  0    1949    1
     0.11   0      0.02   0.05   0.01   0      0      0      0.01    0     
  0    1950    1
     0.14   0      0.02   0.06   0      0      0      0      0       0     
  0    1951    1
     0      0      0.02   0.05   0      0      0      0      0       0     
  0    1952    1
     0      0      0.02   0.05   0      0      0      0      0       0     
  0    1953    1
     0      0      0.02   0.06   0      0      0      0      0       0     
  0    1954    1
     0      0      0.02   0.07   0      0      0      0      0       0     
  0    1955    1
     0      0      0.03   0.08   0      0      0      0      0       0     
  0    1956    1
     0.09   0      0.03   0.10   0      0      0      0      0       0     
  0    1957    1
     0      0      0.03   0.08   0      0      0      0      0       0     
  0    1958    1
     0.01   0      0.02   0.06   0      0      0      0      0       0     
  0    1959    1
     0      0      0.01   0.04   0      0      0      0      0       0     
  0    1960    1
     0      0      0.01   0.04   0      0      0      0      0       0     
  0    1961    1
     0      0      0.01   0.02   0      0      0      0      0       0     
  0    1962    1
     0      0      0.01   0.02   0      0      0      0      0       0     
  0    1963    1
     0      0      0.01   0.02   0.01   0      0      0      0.01    0     
  0    1964    1
     0.02   0      0.01   0.04   0      0      0      0      0       0     
  0    1965    1
     0.08   0      0      0.01   0      0      0      0      0       0     
  0    1966    1
     0.01   0      0.02   0.05   0      0      0      0      0       0     
  0    1967    1
     0      0      0.01   0.02   0      0      0      0      0       0     
  0    1968    1
     0      0      0.02   0.05   0      0      0      0      0       0     
  0    1969    1
     0      0      0.01   0.01   0      0      0      0      0       0     
  0    1970    1
     0      0      0.01   0.02   0      0      0      0      0       0     
  0    1971    1
     0.01   0      0.02   0.05   0      0      0      0      0       0     
  0    1972    1
     0      0      0.01   0.03   0      0      0.16   0.19   0       0.44  
  0.07 1973    1
     0.01   0      0.01   0.02   0.01   0      0.27   0.32   0.01    0.75  
  0.13 1974    1
     0.01   0      0      0.01   0      0      0.13   0.16   0       0.37  
  0.06 1975    1
     0.01   0      0      0.01   0      0      0.38   0.47   0       1.08  
  0.27 1976    1
     0.02   0      0      0.01   0.09   0      0.41   0.49   0.09    1.15  
  0.29 1977    1
     0.11   0      0.03   0.08   0.01   0      0.53   0.64   0.01    1.50  
  0.25 1978    1
     0.02   0      0.03   0.10   0.13   0      2.94   1.53   0.13    1.52  
  0.98 1979    1
     0.01   0      0.04   0.08   0.07   0      0.91   0.53   0.07    1.63  
  0.90 1980    1
     0      0      0.04   0.10   0.07   0      1.56   0.89   0.07    2.18  
  0.97 1981    1
     0.01   0      0.03   0.14   0.33   0      1.42   0.82   0.32    2.14  
  0.95 1982    1
     0      0      0.08   0.16   0.36   0      1.36   0.81   0.35    2.69  
  1.20 1983    1
     0      0      0.01   0.06   0.24   0      1.43   0.48   0.23    2.71  
  1.21 1984    1
     0      0      0.02   0.14   0.22   0      1.04   0.59   0.21    1.38  
  0.62 1985    1
     0      0      0.12   0.49   0.14   0      0.99   0.57   0.14    1.58  
  0.70 1986    1
     0      0      0.28   0.53   0.90   0      1.29   0.69   0.84    1.03  
  0.46 1987    1
     0.01   0      0.11   0.35   0.87   0      0.38   0.45   1.11    1.44  
  0.29 1988    1
     0.23   0      0.06   0.14   1.08   0      1.04   1.57   0.81    2.21  
  0.31 1989    1
     2.53   0      0.23   0.61   1.16   0      1.29   1.81   0.53    2.19  
  0.49 1990    1
     0.72   0      0.20   0.64   0.68   0      0.52   0.68   0.64    1.44  
  0.31 1991    1
     2.88   0      0.12   0.42   0.88   0      0.76   0.88   0.64    2.41  
  0.65 1992    1
     0.85   0      0.15   0.66   0.84   0      0.90   1.12   0.01    3.03  
  0.99 1993    1
     1.02   0      0.14   0.70   6.33   0      0.97   1.21   0       2.13  
  0.73 1994    1
     4.74   0      0.12   0.60   6.52   0      0.68   0.94   0       1.09  
  0.51 1995    1
     3.88   0.01   0.06   0.28   5.77   0      0.84   0.71   0       1.74  
  0.26 1996    1
     2.02   1.78   0.06   0.06   5.45   5.45   1.08   1.00   0       2.04  
  0.47 1997    1
     1.47   0.85   0.02   0.18   9.80   9.40   0.79   0.76   0       1.56  
  0.47 1998    1
     0.62   1.61   0.10   0.40   8.62  15.32   1.78   1.26   0       2.11  
  0.45 1999    1
     0.61   2.09   0.25   0.50   2.62   9.77   0.85   0.59   0       1.71  
  0.39 2000    1
     0.43   1.09   0.31   0.44   3.93  15.89   0.32   0.36   0       1.41  
  0.57 2001    1
     0.47   1.87   0.27   0.52   3.14  17.52   0.32   0.38   0       1.40  
  0.60 2002    1
     0.09   0.50   0.33   0.91   1.93   8.38   0.26   0.32   0       1.12  
  0.51 2003    1
     0.22   0.29   0.08   0.44   1.11   6.00   0.23   0.40   0       0.99  
  0.43 2004    1
     0.14   0.60   0.16   0.37   0.65   3.48   0.26   0.51   0       0.77  
  0.51 2005    1
     0.15   0.85   0.14   0.49   0.55   4.22   0.35   0.50   0       1.11  
  0.67 2006    1
     0.41   1.64   0.64   0.87   1.18   5.01   0.38   0.48   0.01    1.40  
  0.82 2007    1
     0.26   1.60   0.20   0.81   1.49   6.45   0.26   0.45   0.04    1.25  
  0.89 2008    1
     0.05   0.62   0.66   0.89   1.15   6.88   0.12   0.49   0.06    0.95  
  0.76 2009    1
     0.04   0.27   0.27   0.64   0.53   4.42   0.20   0.61   0.03    1.02  
  0.73 2010    1
     0.09   0.36   0.16   1.06   1.41   6.77   0.31   0.60   0.02    1.56  
  0.96 2011    1
     0.08   0.39   0.37   1.02   1.32   7.61   0.37   0.41   0.06    1.68  
  1.24 2012    1
     0.05   0.17   0.26   0.97   1.59   5.56   0.25   0.64   0.02    1.48  
  1.26 2013    1
     0.02   0.09   0.08   0.66   0.74   3.72   0.18   0.48   0.03    0.51  
  0.53 2014    1
#
58 #_N_cpue_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_Fleet Units Errtype
1       0     0 # 1_CA_NorthOf4010_Comm_Dead
2       0     0 # 2_CA_NorthOf4010_Comm_Live
3       0     0 # 3_CA_NorthOf4010_Rec_PC
4       0     0 # 4_CA_NorthOf4010_Rec_PR
5       0     0 # 5_OR_SouthernOR_Comm_Dead
6       1     0 # 6_OR_SouthernOR_Comm_Live
7       1     0 # 7_OR_SouthernOR_Rec_PC
8       0     0 # 8_OR_SouthernOR_Rec_PR
9       0     0 # 9_OR_NorthernOR_Comm
10      0     0 # 10_OR_NorthernOR_Rec_PC
11      0     0 # 11_OR_NorthernOR_Rec_PR
12      0     0 # 12_OR_SouthernOR_Rec_PC_ORBS (mirror of fleet 7)

### Oregon commercial logbook index (southern OR; vessels from Port Orford,
#  Gold Beach, and Brookings)
### initially assigning to fleet: "6_OR_SouthernOR_Comm_Live"
#_year  seas    index   obs     err
2004    1        6       0.036   0.211   # OR Commercial Logbook
2005    1        6       0.028   0.194   # OR Commercial Logbook
2006    1        6       0.032   0.200   # OR Commercial Logbook
2007    1        6       0.038   0.213   # OR Commercial Logbook
2008    1        6       0.043   0.204   # OR Commercial Logbook
2009    1        6       0.026   0.207   # OR Commercial Logbook
2010    1        6       0.024   0.254   # OR Commercial Logbook
2011    1        6       0.039   0.203   # OR Commercial Logbook
2012    1        6       0.032   0.206   # OR Commercial Logbook
2013    1        6       0.018   0.228   # OR Commercial Logbook

### Northern CA + Oregon, MRFSS Dockside Charter Boat Trip-Based CPUE (nort
# h of 40-10)
### assigned to fleet: "7_OR_SouthernOR_Rec_PC"
### NOTE: fleet changed to be negative (removed from likelihood)
###       due to issues identified at STAR panel (see report)
#_year  seas    index   obs     err
1980    1       -7      0.190   0.260   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1981    1       -7      0.086   0.221   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1982    1       -7      0.119   0.241   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1983    1       -7      0.152   0.350   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1984    1       -7      0.056   0.296   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1985    1       -7      0.091   0.269   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1986    1       -7      0.121   0.429   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1987    1       -7      0.234   0.167   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1988    1       -7      0.193   0.175   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1989    1       -7      0.084   0.162   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1993    1       -7      0.178   0.135   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1994    1       -7      0.152   0.135   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1995    1       -7      0.115   0.136   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1996    1       -7      0.093   0.178   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1997    1       -7      0.116   0.172   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1998    1       -7      0.131   0.183   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
1999    1       -7      0.134   0.128   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
2000    1       -7      0.132   0.147   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
2001    1       -7      0.109   0.225   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
2002    1       -7      0.109   0.196   # NoCA-OR Rec MRFSS Charter Boat CP
# UE
2003    1       -7      0.044   0.530   # NoCA-OR Rec MRFSS Charter Boat CP
# UE

### OR ORBS Charter Boat Dockside Trip-Based CPUE
### (AREA WEIGHTED SUM OF REGIONAL TRENDS)
### assigning to fleet: "12_OR_SouthernOR_Rec_PC_ORBS" which is a mirror
###                     of fleet "7_OR_SouthernOR_Rec_PC"
#_year  seas    index   obs     err
2001    1       12      0.0227  0.078   #OR Rec ORBS Trip-based Charter CPU
# E
2002    1       12      0.0194  0.0771  #OR Rec ORBS Trip-based Charter CPU
# E
2003    1       12      0.0205  0.0792  #OR Rec ORBS Trip-based Charter CPU
# E
2004    1       12      0.0181  0.0907  #OR Rec ORBS Trip-based Charter CPU
# E
2005    1       12      0.0146  0.0971  #OR Rec ORBS Trip-based Charter CPU
# E
2006    1       12      0.0213  0.0758  #OR Rec ORBS Trip-based Charter CPU
# E
2007    1       12      0.0279  0.0751  #OR Rec ORBS Trip-based Charter CPU
# E
2008    1       12      0.0199  0.0731  #OR Rec ORBS Trip-based Charter CPU
# E
2009    1       12      0.0146  0.0867  #OR Rec ORBS Trip-based Charter CPU
# E
2010    1       12      0.0168  0.0873  #OR Rec ORBS Trip-based Charter CPU
# E
2011    1       12      0.0196  0.0798  #OR Rec ORBS Trip-based Charter CPU
# E
2012    1       12      0.0212  0.0863  #OR Rec ORBS Trip-based Charter CPU
# E
2013    1       12      0.0173  0.0817  #OR Rec ORBS Trip-based Charter CPU
# E
2014    1       12      0.0132  0.1091  #OR Rec ORBS Trip-based Charter CPU
# E

### OR onboard index
### initially assigning to fleet: "10_OR_NorthernOR_Rec_PC"
#_year  seas    index   obs     err
2001    1       10      0.050   0.246   #OR onboard
2003    1       10      0.039   0.210   #OR onboard
2004    1       10      0.031   0.265   #OR onboard
2005    1       10      0.029   0.287   #OR onboard
2006    1       10      0.036   0.254   #OR onboard
2007    1       10      0.058   0.190   #OR onboard
2008    1       10      0.030   0.245   #OR onboard
2009    1       10      0.045   0.236   #OR onboard
2010    1       10      0.013   0.435   #OR onboard
2011    1       10      0.051   0.289   #OR onboard
2012    1       10      0.044   0.259   #OR onboard
2013    1       10      0.026   0.293   #OR onboard
2014    1       10      0.017   0.415   #OR onboard

0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with C
# V; -1 for normal with se; -2 for lognormal
#Fleet Disc_units err_type
0 #N discard obs
#_year seas index obs err
#
0 #_N_meanbodywt_obs
30 #_DF_for_meanbodywt_T-distribution_like

2  # length bin method: 1=use databins; 2=generate from binwidth,min,max be
# low; 3=read vector
2  # binwidth for population size comp
8  # minimum size in the population (lower edge of first bin and size at ag
# e 0.00)
50 # maximum size in the population (lower edge of last bin)

-0.0001 #_comp_tail_compression
1e-003 #_add_to_comp
0 #_combine males into females at or below this bin number
15 #_N_LengthBins
18 20 22 24 26 28 30 32 34 36 38 40 42 44 46

221 # pre-STAR base was 156 #_N_Length_obs

### CA commercial landings, dead fish, north of 40-10
### initially assigning to fleet: 1_CA_NorthOf4010_Comm_Dead
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1992    1       1       0       2       4       0       0       8       11 
     48      59      131     94      16      54      3       0       0     
  0       0       0       0       8       11      48      59      131     9
4      16      54      3       0       0       0       0
1993    1       1       0       2       6       0       0       83      0  
     0       0       0       104     135     208     69      0       0     
  0       0       0       0       83      0       0       0       0       1
04     135     208     69      0       0       0       0
1994    1       1       0       2       9       0       0       0       0  
     0       139     120     240     218     139     0       0       0     
  0       60      0       0       0       0       0       139     120     2
40     218     139     0       0       0       0       60
1995    1       1       0       2       41      0       0       0       0  
     0       0       399     935     1200    393     134     533     533   
  0       0       0       0       0       0       0       0       399     9
35     1200    393     134     533     533     0       0
1996    1       1       0       2       42      0       0       0       42 
     0       0       714     811     598     1068    314     440     200   
  0       0       0       0       0       42      0       0       714     8
11     598     1068    314     440     200     0       0
1997    1       1       0       2       25      0       0       0       0  
     62      248     454     480     462     474     212     106     0     
  0       0       0       0       0       0       62      248     454     4
80     462     474     212     106     0       0       0
1999    1       1       0       2       8       0       0       0       0  
     7       91      224     147     161     126     63      28      0     
  0       0       0       0       0       0       7       91      224     1
47     161     126     63      28      0       0       0
2000    1       1       0       2       5       0       0       0       0  
     0       40      37      116     143     87      43      37      0     
  0       32      0       0       0       0       0       40      37      1
16     143     87      43      37      0       0       32
2002    1       1       0       2       6       0       0       0       0  
     0       0       0       153     153     255     0       0       0     
  0       0       0       0       0       0       0       0       0       1
53     153     255     0       0       0       0       0

### CA commercial landings, live fish, north of 40-10
### initially assigning to fleet: 2_CA_NorthOf4010_Comm_Live
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1997    1       2       0       2       27      0       0       0       60 
     180     664     852     448     164     232     0       60      0     
  0       0       0       0       0       60      180     664     852     4
48     164     232     0       60      0       0       0
1999    1       2       0       2       22      0       0       0       0  
     24      79      273     548     595     479     123     98      0     
  0       0       0       0       0       0       24      79      273     5
48     595     479     123     98      0       0       0
2000    1       2       0       2       20      0       0       0       0  
     0       57      342     270     480     540     171     102     0     
  0       0       0       0       0       0       0       57      342     2
70     480     540     171     102     0       0       0
2001    1       2       0       2       12      0       0       0       0  
     0       16      160     208     336     256     144     16      16    
  0       0       0       0       0       0       0       16      160     2
08     336     256     144     16      16      0       0
2002    1       2       0       2       22      0       0       0       0  
     0       90      535     570     640     210     50      45      0     
  50      0       0       0       0       0       0       90      535     5
70     640     210     50      45      0       50      0
2004    1       2       0       2       3       0       0       0       0  
     0       0       87      0       87      29      87      0       0     
  0       0       0       0       0       0       0       0       87      0
       87      29      87      0       0       0       0
2006    1       2       0       2       11      0       0       0       0  
     20      74      66      70      316     360     130     54      0     
  0       0       0       0       0       0       20      74      66      7
0      316     360     130     54      0       0       0
2007    1       2       0       2       16      0       0       0       0  
     0       37      157     275     582     328     155     45      0     
  0       0       0       0       0       0       0       37      157     2
75     582     328     155     45      0       0       0
2008    1       2       0       2       15      0       0       0       0  
     0       56      56      350     420     357     210     49      0     
  0       0       0       0       0       0       0       56      56      3
50     420     357     210     49      0       0       0
2009    1       2       0       2       13      0       0       0       0  
     0       0       50      177     358     464     224     29      0     
  0       0       0       0       0       0       0       0       50      1
77     358     464     224     29      0       0       0
2010    1       2       0       2       2       0       0       0       0  
     0       0       0       21      42      77      56      21      0     
  0       0       0       0       0       0       0       0       0       2
1      42      77      56      21      0       0       0

### CA rec landings, PC mode, north of 40-10
### initially assigning to fleet: 3_CA_NorthOf4010_Rec_PC
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1981    1       3       0       2       1       0       0       0       0  
     0       0       0       0       0       0       0       0       1     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       1       0       0
1985    1       3       0       2       1       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       0       0       0       0       0       0
1995    1       3       0       2       3       0       0       0       0  
     0       0       0       0       2       1       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       2       1       0       0       0       0       0
1996    1       3       0       2       7       0       0       0       0  
     0       0       0       4       2       0       1       0       0     
  0       0       0       0       0       0       0       0       0       4
       2       0       1       0       0       0       0
2003    1       3       0       2       1       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       0       0       0       0       0       0
2004    1       3       0       2       4       0       0       0       0  
     0       0       0       0       0       0       1       1       1     
  0       1       0       0       0       0       0       0       0       0
       0       0       1       1       1       0       1
2005    1       3       0       2       2       0       0       0       0  
     0       0       0       0       0       0       1       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       1       1       0       0       0
2006    1       3       0       2       3       0       0       0       0  
     0       0       0       1       0       1       0       1       0     
  0       0       0       0       0       0       0       0       0       1
       0       1       0       1       0       0       0
2007    1       3       0       2       11      0       0       0       0  
     0       0       2       2       5       1       1       0       0     
  0       0       0       0       0       0       0       0       2       2
       5       1       1       0       0       0       0
2008    1       3       0       2       25      0       0       0       0  
     0       1       1       3       4       5       8       1       2     
  0       0       0       0       0       0       0       1       1       3
       4       5       8       1       2       0       0
2009    1       3       0       2       21      0       0       0       0  
     0       1       2       1       2       8       4       3       0     
  0       0       0       0       0       0       0       1       2       1
       2       8       4       3       0       0       0
2010    1       3       0       2       11      0       0       0       0  
     0       0       0       0       0       3       6       1       1     
  0       0       0       0       0       0       0       0       0       0
       0       3       6       1       1       0       0
2011    1       3       0       2       3       0       0       0       0  
     0       0       1       0       0       2       0       0       0     
  0       0       0       0       0       0       0       0       1       0
       0       2       0       0       0       0       0
2012    1       3       0       2       32      0       0       0       0  
     0       0       1       2       8       12      6       3       0     
  0       0       0       0       0       0       0       0       1       2
       8       12      6       3       0       0       0
2013    1       3       0       2       33      0       0       0       0  
     0       0       0       5       4       8       10      6       0     
  0       0       0       0       0       0       0       0       0       5
       4       8       10      6       0       0       0
2014    1       3       0       2       6       0       0       0       0  
     0       0       1       0       0       0       3       2       0     
  0       0       0       0       0       0       0       0       1       0
       0       0       3       2       0       0       0

### CA rec landings, PR mode, north of 40-10
### initially assigning to fleet: 4_CA_NorthOf4010_Rec_PR
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1981    1       4       0       2       4       0       0       0       0  
     0       1       1       0       0       1       0       0       1     
  0       0       0       0       0       0       0       1       1       0
       0       1       0       0       1       0       0
1982    1       4       0       2       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       1
1983    1       4       0       2       8       0       0       0       0  
     0       0       0       1       0       0       1       4       1     
  1       0       0       0       0       0       0       0       0       1
       0       0       1       4       1       1       0
1984    1       4       0       2       4       0       0       0       0  
     0       1       0       0       0       0       2       0       0     
  1       0       0       0       0       0       0       1       0       0
       0       0       2       0       0       1       0
1985    1       4       0       2       11      0       0       0       0  
     0       0       0       1       0       1       1       3       4     
  1       0       0       0       0       0       0       0       0       1
       0       1       1       3       4       1       0
1986    1       4       0       2       6       0       0       0       0  
     1       0       0       1       1       1       1       1       0     
  0       0       0       0       0       0       1       0       0       1
       1       1       1       1       0       0       0
1987    1       4       0       2       4       0       0       0       0  
     0       0       1       0       0       1       1       1       0     
  0       0       0       0       0       0       0       0       1       0
       0       1       1       1       0       0       0
1989    1       4       0       2       1       0       0       0       0  
     0       0       1       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       1       0
       0       0       0       0       0       0       0
1993    1       4       0       2       16      0       0       0       0  
     0       0       1       2       2       3       8       0       0     
  0       0       0       0       0       0       0       0       1       2
       2       3       8       0       0       0       0
1994    1       4       0       2       6       0       0       0       0  
     0       0       1       3       0       0       2       0       0     
  0       0       0       0       0       0       0       0       1       3
       0       0       2       0       0       0       0
1995    1       4       0       2       4       0       0       0       0  
     0       1       1       1       1       0       0       0       0     
  0       0       0       0       0       0       0       1       1       1
       1       0       0       0       0       0       0
1996    1       4       0       2       12      0       0       0       0  
     0       0       3       2       3       2       2       0       0     
  0       0       0       0       0       0       0       0       3       2
       3       2       2       0       0       0       0
1998    1       4       0       2       11      0       0       0       1  
     0       0       1       2       1       2       0       3       0     
  1       0       0       0       0       1       0       0       1       2
       1       2       0       3       0       1       0
1999    1       4       0       2       48      0       0       0       0  
     0       2       7       14      11      8       1       4       1     
  0       0       0       0       0       0       0       2       7       1
4      11      8       1       4       1       0       0
2000    1       4       0       2       31      0       0       0       0  
     0       1       2       9       14      3       0       2       0     
  0       0       0       0       0       0       0       1       2       9
       14      3       0       2       0       0       0
2001    1       4       0       2       3       0       0       0       0  
     0       0       1       0       0       0       0       2       0     
  0       0       0       0       0       0       0       0       1       0
       0       0       0       2       0       0       0
2002    1       4       0       2       7       0       0       0       0  
     0       0       1       0       0       3       2       0       1     
  0       0       0       0       0       0       0       0       1       0
       0       3       2       0       1       0       0
2003    1       4       0       2       5       0       0       0       0  
     0       0       1       3       0       0       0       1       0     
  0       0       0       0       0       0       0       0       1       3
       0       0       0       1       0       0       0
2004    1       4       0       2       3       0       0       0       0  
     1       0       0       0       0       0       2       0       0     
  0       0       0       0       0       0       1       0       0       0
       0       0       2       0       0       0       0
2005    1       4       0       2       36      0       0       0       0  
     0       2       1       6       8       6       8       2       2     
  0       1       0       0       0       0       0       2       1       6
       8       6       8       2       2       0       1
2006    1       4       0       2       54      0       0       0       0  
     0       3       4       11      10      15      8       2       1     
  0       0       0       0       0       0       0       3       4       1
1      10      15      8       2       1       0       0
2007    1       4       0       2       99      0       0       0       0  
     0       1       8       20      21      21      19      9       0     
  0       0       0       0       0       0       0       1       8       2
0      21      21      19      9       0       0       0
2008    1       4       0       2       94      0       0       0       0  
     0       1       6       10      27      28      13      8       1     
  0       0       0       0       0       0       0       1       6       1
0      27      28      13      8       1       0       0
2009    1       4       0       2       73      0       0       0       0  
     0       0       4       13      15      21      13      7       0     
  0       0       0       0       0       0       0       0       4       1
3      15      21      13      7       0       0       0
2010    1       4       0       2       35      0       0       0       0  
     0       0       1       4       6       10      6       5       3     
  0       0       0       0       0       0       0       0       1       4
       6       10      6       5       3       0       0
2011    1       4       0       2       50      0       0       0       0  
     0       1       2       4       16      12      11      1       2     
  0       1       0       0       0       0       0       1       2       4
       16      12      11      1       2       0       1
2012    1       4       0       2       66      0       0       0       0  
     0       1       3       3       13      19      16      9       2     
  0       0       0       0       0       0       0       1       3       3
       13      19      16      9       2       0       0
2013    1       4       0       2       62      0       0       0       0  
     0       0       1       7       10      19      18      6       1     
  0       0       0       0       0       0       0       0       1       7
       10      19      18      6       1       0       0
2014    1       4       0       2       29      0       0       0       0  
     0       0       1       2       5       4       5       8       4     
  0       0       0       0       0       0       0       0       1       2
       5       4       5       8       4       0       0

###     OR      Comm,   sexes   combined,       DEAD    FISHERY
###     initially       assigning       to      fleet:  5_OR_SouthernOR_Com
# m_Dead
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1995    1       5       0       2       102     0       0       1       0  
     2.1     7       36.9    23.1    27.8    18.3    6.3     1.7     0     
  0       0       0       0       1       0       2.1     7       36.9    2
3.1    27.8    18.3    6.3     1.7     0       0       0
1996    1       5       0       2       118     0       0       0       0  
     1.1     10.4    23.9    35.6    25.9    15.2    8.1     2       0     
  0       0       0       0       0       0       1.1     10.4    23.9    3
5.6    25.9    15.2    8.1     2       0       0       0
1998    1       5       0       2       38      0       0       0       0  
     0       3.7     6.5     28      15      3.2     5.3     1.1     0     
  0       0       0       0       0       0       0       3.7     6.5     2
8      15      3.2     5.3     1.1     0       0       0
1999    1       5       0       2       37      0       0       0       0  
     0       0       11.3    14.5    6.2     2       3.1     1       0     
  0       0       0       0       0       0       0       0       11.3    1
4.5    6.2     2       3.1     1       0       0       0
2000    1       5       0       2       137     0       0       0       1.2
     1.2     5.3     37.8    45.8    26.2    20.1    14      2.2     2     
  0       0       0       0       0       1.2     1.2     5.3     37.8    4
5.8    26.2    20.1    14      2.2     2       0       0
2001    1       5       0       2       196     0       0       0       0  
     0       2.3     50.2    55.4    64.2    50.2    16.2    6.6     0     
  1       0       0       0       0       0       0       2.3     50.2    5
5.4    64.2    50.2    16.2    6.6     0       1       0
2002    1       5       0       2       253     0       0       0       0  
     0       0       37.3    65.3    72.3    56.8    24.2    9.1     1     
  0       0       0       0       0       0       0       0       37.3    6
5.3    72.3    56.8    24.2    9.1     1       0       0
2003    1       5       0       2       200     0       0       0       0  
     0       2.4     30.1    70.7    66.8    49.1    21.9    9.8     0     
  0       0       0       0       0       0       0       2.4     30.1    7
0.7    66.8    49.1    21.9    9.8     0       0       0
2004    1       5       0       2       115     0       0       0       0  
     0       1       16.8    43.3    32      17.9    9.5     3.1     0     
  0       0       0       0       0       0       0       1       16.8    4
3.3    32      17.9    9.5     3.1     0       0       0
2005    1       5       0       2       23      0       0       0       0  
     0       0       4.9     4.5     6.2     2.3     5.1     2.1     0     
  0       0       0       0       0       0       0       0       4.9     4
.5     6.2     2.3     5.1     2.1     0       0       0
2006    1       5       0       2       30      0       0       0       0  
     0       0       1.7     11.4    17.4    7.8     5.6     0       0     
  0       0       0       0       0       0       0       0       1.7     1
1.4    17.4    7.8     5.6     0       0       0       0
2007    1       5       0       2       44      0       0       0       0  
     0       0       3.7     14.7    18.6    13.6    7.3     2.9     0     
  0       1       0       0       0       0       0       0       3.7     1
4.7    18.6    13.6    7.3     2.9     0       0       1
2008    1       5       0       2       28      0       0       0       0  
     0       0       2       5.4     9       4       4.1     4.3     0     
  0       0       0       0       0       0       0       0       2       5
.4     9       4       4.1     4.3     0       0       0
2009    1       5       0       2       82      0       0       0       0  
     0       0       6.2     26      28.3    15.5    12.6    4       3     
  0       0       0       0       0       0       0       0       6.2     2
6      28.3    15.5    12.6    4       3       0       0
2010    1       5       0       2       75      0       0       0       0  
     0       0       2.1     18      19.8    24.9    9.4     7       0     
  0       0       0       0       0       0       0       0       2.1     1
8      19.8    24.9    9.4     7       0       0       0
2011    1       5       0       2       309     0       0       0       0  
     0       0       21.2    48.9    87.4    96.9    47.1    15      5.7   
  0       2.8     0       0       0       0       0       0       21.2    4
8.9    87.4    96.9    47.1    15      5.7     0       2.8
2012    1       5       0       2       156     0       0       0       0  
     1       2       8.1     22.2    31.4    45.5    30      17.2    2     
  0       1.1     0       0       0       0       1       2       8.1     2
2.2    31.4    45.5    30      17.2    2       0       1.1
2013    1       5       0       2       265     0       0       0       0  
     0       1       15.2    43.2    72.2    88.9    36.4    15.3    1     
  0       0       0       0       0       0       0       1       15.2    4
3.2    72.2    88.9    36.4    15.3    1       0       0
2014    1       5       0       2       165     0       0       0       0  
     0       0       8       25.4    49.2    50.7    24.2    8       3     
  0       1       0       0       0       0       0       0       8       2
5.4    49.2    50.7    24.2    8       3       0       1

###     OR      Comm,   sexes   combined,       LIVE    FISHERY
###     initially       assigning       to      fleet:  6_OR_SouthernOR_Com
# m_Live
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1998    1       6       0       2       100     0       0       0       0  
     0       3.6     31      74.4    61.1    37.4    14.5    2       0     
  0       0       0       0       0       0       0       3.6     31      7
4.4    61.1    37.4    14.5    2       0       0       0
1999    1       6       0       2       93      0       0       0       0  
     5.9     7       30.6    30      13.2    15.2    7.6     2       1     
  0       0       0       0       0       0       5.9     7       30.6    3
0      13.2    15.2    7.6     2       1       0       0
2000    1       6       0       2       1095    0       0       0       0  
     1.1     13.6    209.9   257     309.4   209.9   101.3   26.4    7.3   
  0       0       0       0       0       0       1.1     13.6    209.9   2
57     309.4   209.9   101.3   26.4    7.3     0       0
2001    1       6       0       2       1858    0       0       0       0  
     0       4       350.1   554     527.9   320.5   127.4   29.6    5     
  3       0       0       0       0       0       0       4       350.1   5
54     527.9   320.5   127.4   29.6    5       3       0
2002    1       6       0       2       1339    0       0       0       0  
     0       5.1     207.5   386.4   363.4   276     116.4   31.4    0     
  2       0       0       0       0       0       0       5.1     207.5   3
86.4   363.4   276     116.4   31.4    0       2       0
2003    1       6       0       2       794     0       0       0       0  
     0       1       144.5   239.7   205.8   145.4   64.1    17.3    4     
  1.1     0       0       0       0       0       0       1       144.5   2
39.7   205.8   145.4   64.1    17.3    4       1.1     0
2004    1       6       0       2       586     0       0       0       0  
     0       2       104.8   172.3   168.8   109.6   25.5    9.2     3.1   
  1       0       0       0       0       0       0       2       104.8   1
72.3   168.8   109.6   25.5    9.2     3.1     1       0
2005    1       6       0       2       194     0       0       0       0  
     0       0       26.9    46.2    53.2    44      19.3    8.3     1     
  0       0       0       0       0       0       0       0       26.9    4
6.2    53.2    44      19.3    8.3     1       0       0
2006    1       6       0       2       408     0       0       0       0  
     1       2       40.4    75.2    120.1   99.3    59.2    23.1    2     
  0       0       0       0       0       0       1       2       40.4    7
5.2    120.1   99.3    59.2    23.1    2       0       0
2007    1       6       0       2       680     0       0       0       0  
     0       4       46.1    141.2   184.3   193.6   106     17.1    3     
  0       1       0       0       0       0       0       4       46.1    1
41.2   184.3   193.6   106     17.1    3       0       1
2008    1       6       0       2       348     0       0       0       0  
     0       0       26.2    60.8    109.9   80.1    52.6    12      9.1   
  2.1     0       0       0       0       0       0       0       26.2    6
0.8    109.9   80.1    52.6    12      9.1     2.1     0
2009    1       6       0       2       348     0       0       0       0  
     0       3.4     36.4    95.1    130.1   87.6    42.6    13.8    0     
  1.1     1.2     0       0       0       0       0       3.4     36.4    9
5.1    130.1   87.6    42.6    13.8    0       1.1     1.2
2010    1       6       0       2       454     0       0       0       0  
     0       3.3     50.4    103.5   174.8   113.1   40.8    12.1    1     
  0       0       0       0       0       0       0       3.3     50.4    1
03.5   174.8   113.1   40.8    12.1    1       0       0
2011    1       6       0       2       688     0       0       0       0  
     0       4.1     44.5    161.8   221.4   200.6   90.1    19.1    3.1   
  1.1     1       0       0       0       0       0       4.1     44.5    1
61.8   221.4   200.6   90.1    19.1    3.1     1.1     1
2012    1       6       0       2       447     0       0       0       0  
     0       3.1     28.1    92.3    149.9   99.9    74.6    21.5    1     
  0       2       0       0       0       0       0       3.1     28.1    9
2.3    149.9   99.9    74.6    21.5    1       0       2
2013    1       6       0       2       423     0       0       0       0  
     0       1.1     28.5    96.8    128     126.3   50.3    6.2     4.1   
  0       1       0       0       0       0       0       1.1     28.5    9
6.8    128     126.3   50.3    6.2     4.1     0       1
2014    1       6       0       2       355     0       0       0       0  
     0       5.3     32.8    82.6    116.9   73.4    40.4    16.2    4.7   
  2       0       0       0       0       0       0       5.3     32.8    8
2.6    116.9   73.4    40.4    16.2    4.7     2       0

###     Oregon  Rec,    South,  Party/Charter
###     initially       assigning       to      fleet:  7_OR_SouthernOR_Rec
# _PC
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1984    1       7       0       2       4       0       0       0       0  
     0       0       0       2       1       0       1       0       0     
  0       0       0       0       0       0       0       0       0       2
       1       0       1       0       0       0       0
1985    1       7       0       2       8       0       0       0       1  
     0       0       1       0       2       0       2       0       1     
  1       0       0       0       0       1       0       0       1       0
       2       0       2       0       1       1       0
1986    1       7       0       2       4       0       0       0       0  
     0       0       0       0       1       2       1       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       2       1       0       0       0       0
1987    1       7       0       2       4       0       0       0       1  
     0       0       1       0       0       1       0       0       1     
  0       0       0       0       0       1       0       0       1       0
       0       1       0       0       1       0       0
1988    1       7       0       2       7       0       0       0       0  
     0       1       0       1       0       1       1       3       0     
  0       0       0       0       0       0       0       1       0       1
       0       1       1       3       0       0       0
1989    1       7       0       2       2       0       0       0       1  
     0       0       0       0       0       1       0       0       0     
  0       0       0       0       0       1       0       0       0       0
       0       1       0       0       0       0       0
1993    1       7       0       2       9       0       0       0       0  
     0       0       0       3       1       4       1       0       0     
  0       0       0       0       0       0       0       0       0       3
       1       4       1       0       0       0       0
1994    1       7       0       2       31      0       0       0       1  
     1       1       4       8       3       5       3       2       2     
  1       0       0       0       0       1       1       1       4       8
       3       5       3       2       2       1       0
1995    1       7       0       2       12      0       0       0       0  
     0       1       2       3       5       0       1       0       0     
  0       0       0       0       0       0       0       1       2       3
       5       0       1       0       0       0       0
1996    1       7       0       2       12      0       0       0       0  
     0       0       1       1       2       3       3       1       1     
  0       0       0       0       0       0       0       0       1       1
       2       3       3       1       1       0       0
1997    1       7       0       2       29      0       0       1       0  
     1       2       2       11      6       5       0       1       0     
  0       0       0       0       1       0       1       2       2       1
1      6       5       0       1       0       0       0
1998    1       7       0       2       16      0       0       0       0  
     0       1       2       1       4       4       1       3       0     
  0       0       0       0       0       0       0       1       2       1
       4       4       1       3       0       0       0
1999    1       7       0       2       31      0       0       0       0  
     1       3       2       5       4       10      6       0       0     
  0       0       0       0       0       0       1       3       2       5
       4       10      6       0       0       0       0
2000    1       7       0       2       15      0       0       1       0  
     0       0       2       4       4       3       1       0       0     
  0       0       0       0       1       0       0       0       2       4
       4       3       1       0       0       0       0
2001    1       7       0       2       96      0       0       0       0  
     3       6       16      17      23      17      12      2       0     
  0       0       0       0       0       0       3       6       16      1
7      23      17      12      2       0       0       0
2002    1       7       0       2       188     0       0       0       0  
     2       6       19      27      43      50      30      9       2     
  0       0       0       0       0       0       2       6       19      2
7      43      50      30      9       2       0       0
2003    1       7       0       2       257     0       0       0       0  
     3       17      24      56      64      55      26      8       2     
  0       2       0       0       0       0       3       17      24      5
6      64      55      26      8       2       0       2
2004    1       7       0       2       117     0       0       0       0  
     0       2       5       13      31      31      21      13      1     
  0       0       0       0       0       0       0       2       5       1
3      31      31      21      13      1       0       0
2005    1       7       0       2       137     0       0       0       0  
     0       2       9       16      27      34      31      15      2     
  0       1       0       0       0       0       0       2       9       1
6      27      34      31      15      2       0       1
2006    1       7       0       2       187     0       0       0       0  
     0       3       8       12      40      52      49      17      6     
  0       0       0       0       0       0       0       3       8       1
2      40      52      49      17      6       0       0
2007    1       7       0       2       317     0       0       0       0  
     3       5       12      37      71      99      65      18      4     
  2       1       0       0       0       0       3       5       12      3
7      71      99      65      18      4       2       1
2008    1       7       0       2       192     0       0       0       0  
     2       3       5       16      29      48      57      23      9     
  0       0       0       0       0       0       2       3       5       1
6      29      48      57      23      9       0       0
2009    1       7       0       2       106     0       0       0       0  
     1       0       4       8       21      28      22      15      6     
  1       0       0       0       0       0       1       0       4       8
       21      28      22      15      6       1       0
2010    1       7       0       2       210     0       0       0       0  
     1       2       10      10      22      53      72      32      8     
  0       0       0       0       0       0       1       2       10      1
0      22      53      72      32      8       0       0
2011    1       7       0       2       230     0       0       0       0  
     0       2       8       17      34      73      56      31      7     
  0       2       0       0       0       0       0       2       8       1
7      34      73      56      31      7       0       2
2012    1       7       0       2       280     0       0       0       0  
     1       1       3       23      63      86      69      24      9     
  1       0       0       0       0       0       1       1       3       2
3      63      86      69      24      9       1       0
2013    1       7       0       2       206     0       0       0       2  
     1       1       8       9       44      51      63      20      6     
  1       0       0       0       0       2       1       1       8       9
       44      51      63      20      6       1       0
2014    1       7       0       2       75      0       0       0       1  
     0       1       0       3       17      15      25      9       3     
  0       1       0       0       0       1       0       1       0       3
       17      15      25      9       3       0       1

###     Oregon  Rec,    South   Private/Rental
###     initially       assigning       to      fleet:  8_OR_SouthernOR_Rec
# _PR
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1980    1       8       0       2       4       0       0       0       0  
     0       0       0       1       0       0       0       2       0     
  0       1       0       0       0       0       0       0       0       1
       0       0       0       2       0       0       1
1981    1       8       0       2       2       0       0       0       0  
     0       0       0       0       0       0       0       1       1     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       1       1       0       0
1982    1       8       0       2       5       0       0       0       0  
     0       0       0       1       2       1       1       0       0     
  0       0       0       0       0       0       0       0       0       1
       2       1       1       0       0       0       0
1983    1       8       0       2       1       0       0       0       0  
     0       0       1       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       1       0
       0       0       0       0       0       0       0
1984    1       8       0       2       7       0       0       0       0  
     0       0       0       0       0       2       0       1       2     
  1       1       0       0       0       0       0       0       0       0
       0       2       0       1       2       1       1
1985    1       8       0       2       11      0       0       0       0  
     1       0       0       0       2       0       0       5       2     
  1       0       0       0       0       0       1       0       0       0
       2       0       0       5       2       1       0
1986    1       8       0       2       1       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       0       0       0       0       0       0
1987    1       8       0       2       3       0       0       0       0  
     0       0       1       1       0       1       0       0       0     
  0       0       0       0       0       0       0       0       1       1
       0       1       0       0       0       0       0
1988    1       8       0       2       10      0       0       0       0  
     0       1       0       2       3       1       2       1       0     
  0       0       0       0       0       0       0       1       0       2
       3       1       2       1       0       0       0
1989    1       8       0       2       2       0       0       1       0  
     0       0       0       1       0       0       0       0       0     
  0       0       0       0       1       0       0       0       0       1
       0       0       0       0       0       0       0
1993    1       8       0       2       10      0       0       0       0  
     0       0       2       1       1       1       2       2       1     
  0       0       0       0       0       0       0       0       2       1
       1       1       2       2       1       0       0
1994    1       8       0       2       17      0       0       0       0  
     0       2       3       1       2       4       2       3       0     
  0       0       0       0       0       0       0       2       3       1
       2       4       2       3       0       0       0
1995    1       8       0       2       17      0       0       0       1  
     1       0       2       5       2       4       2       0       0     
  0       0       0       0       0       1       1       0       2       5
       2       4       2       0       0       0       0
1996    1       8       0       2       1       0       0       0       0  
     0       0       0       0       0       0       1       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       1       0       0       0       0
1997    1       8       0       2       42      0       0       0       0  
     0       2       7       8       11      8       6       0       0     
  0       0       0       0       0       0       0       2       7       8
       11      8       6       0       0       0       0
1998    1       8       0       2       41      0       0       0       2  
     1       1       3       9       13      8       2       1       1     
  0       0       0       0       0       2       1       1       3       9
       13      8       2       1       1       0       0
1999    1       8       0       2       21      0       0       0       0  
     1       0       1       5       7       3       2       2       0     
  0       0       0       0       0       0       1       0       1       5
       7       3       2       2       0       0       0
2000    1       8       0       2       10      0       0       0       0  
     0       2       1       0       3       1       0       3       0     
  0       0       0       0       0       0       0       2       1       0
       3       1       0       3       0       0       0
2001    1       8       0       2       81      0       0       0       1  
     1       4       8       18      21      16      6       5       1     
  0       0       0       0       0       1       1       4       8       1
8      21      16      6       5       1       0       0
2002    1       8       0       2       85      0       0       0       0  
     1       5       13      13      19      17      11      4       2     
  0       0       0       0       0       0       1       5       13      1
3      19      17      11      4       2       0       0
2003    1       8       0       2       159     0       0       0       0  
     1       2       13      24      47      35      22      9       5     
  0       1       0       0       0       0       1       2       13      2
4      47      35      22      9       5       0       1
2004    1       8       0       2       107     0       0       0       1  
     1       1       3       8       32      34      19      6       2     
  0       0       0       0       0       1       1       1       3       8
       32      34      19      6       2       0       0
2005    1       8       0       2       200     0       0       0       0  
     0       3       7       19      41      47      51      25      5     
  1       1       0       0       0       0       0       3       7       1
9      41      47      51      25      5       1       1
2006    1       8       0       2       254     0       0       0       0  
     1       4       14      15      52      75      65      16      7     
  4       1       0       0       0       0       1       4       14      1
5      52      75      65      16      7       4       1
2007    1       8       0       2       212     0       0       0       0  
     0       1       10      24      37      55      56      22      6     
  1       0       0       0       0       0       0       1       10      2
4      37      55      56      22      6       1       0
2008    1       8       0       2       196     0       0       0       0  
     2       3       9       22      26      45      56      24      6     
  2       1       0       0       0       0       2       3       9       2
2      26      45      56      24      6       2       1
2009    1       8       0       2       169     0       0       0       1  
     0       4       7       10      25      53      38      22      7     
  2       0       0       0       0       1       0       4       7       1
0      25      53      38      22      7       2       0
2010    1       8       0       2       207     0       0       0       0  
     0       2       6       24      30      52      54      32      6     
  1       0       0       0       0       0       0       2       6       2
4      30      52      54      32      6       1       0
2011    1       8       0       2       272     0       0       0       1  
     1       0       13      27      50      93      54      28      4     
  0       1       0       0       0       1       1       0       13      2
7      50      93      54      28      4       0       1
2012    1       8       0       2       229     0       0       0       0  
     0       1       7       24      32      62      64      26      8     
  3       2       0       0       0       0       0       1       7       2
4      32      62      64      26      8       3       2
2013    1       8       0       2       261     0       0       0       1  
     1       3       6       22      48      61      75      32      12    
  0       0       0       0       0       1       1       3       6       2
2      48      61      75      32      12      0       0
2014    1       8       0       2       158     0       0       0       0  
     1       0       4       11      25      50      42      21      4     
  0       0       0       0       0       0       1       0       4       1
1      25      50      42      21      4       0       0

###     Oregon  Rec,    North,  Party/Charter
###     initially       assigning       to      fleet:  10_OR_NorthernOR_Re
# c_PC
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1980    1       10      0       2       16      0       0       0       0  
     2       1       0       3       2       4       1       2       1     
  0       0       0       0       0       0       2       1       0       3
       2       4       1       2       1       0       0
1981    1       10      0       2       11      0       0       0       0  
     0       0       2       0       3       2       1       2       1     
  0       0       0       0       0       0       0       0       2       0
       3       2       1       2       1       0       0
1982    1       10      0       2       9       0       0       0       0  
     0       0       1       1       1       3       0       2       0     
  1       0       0       0       0       0       0       0       1       1
       1       3       0       2       0       1       0
1983    1       10      0       2       2       0       0       0       0  
     1       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       1       0       0       0       0       0       0
1984    1       10      0       2       10      0       0       0       0  
     0       1       0       1       1       2       3       1       1     
  0       0       0       0       0       0       0       1       0       1
       1       2       3       1       1       0       0
1985    1       10      0       2       9       0       0       0       0  
     1       2       0       1       2       2       1       0       0     
  0       0       0       0       0       0       1       2       0       1
       2       2       1       0       0       0       0
1986    1       10      0       2       5       0       0       0       0  
     0       0       2       2       0       0       0       1       0     
  0       0       0       0       0       0       0       0       2       2
       0       0       0       1       0       0       0
1987    1       10      0       2       22      0       0       0       1  
     2       1       4       1       6       5       1       1       0     
  0       0       0       0       0       1       2       1       4       1
       6       5       1       1       0       0       0
1988    1       10      0       2       31      0       0       1       0  
     1       2       6       3       2       8       5       2       0     
  0       1       0       0       1       0       1       2       6       3
       2       8       5       2       0       0       1
1989    1       10      0       2       37      0       1       0       0  
     3       2       3       7       9       6       4       1       0     
  0       1       0       1       0       0       3       2       3       7
       9       6       4       1       0       0       1
1993    1       10      0       2       61      0       0       0       2  
     3       4       11      15      9       11      5       0       0     
  0       1       0       0       0       2       3       4       11      1
5      9       11      5       0       0       0       1
1994    1       10      0       2       37      0       0       0       1  
     2       3       5       11      6       4       3       1       1     
  0       0       0       0       0       1       2       3       5       1
1      6       4       3       1       1       0       0
1995    1       10      0       2       19      0       0       0       0  
     0       2       3       5       2       5       1       1       0     
  0       0       0       0       0       0       0       2       3       5
       2       5       1       1       0       0       0
1996    1       10      0       2       19      0       0       0       0  
     1       0       5       4       5       1       2       0       1     
  0       0       0       0       0       0       1       0       5       4
       5       1       2       0       1       0       0
1997    1       10      0       2       31      0       0       0       0  
     0       1       4       10      5       8       1       1       1     
  0       0       0       0       0       0       0       1       4       1
0      5       8       1       1       1       0       0
1998    1       10      0       2       36      0       0       1       0  
     1       3       7       11      2       9       2       0       0     
  0       0       0       0       1       0       1       3       7       1
1      2       9       2       0       0       0       0
1999    1       10      0       2       79      0       0       0       4  
     5       7       11      9       22      19      1       1       0     
  0       0       0       0       0       4       5       7       11      9
       22      19      1       1       0       0       0
2000    1       10      0       2       36      0       0       0       1  
     3       2       4       3       8       9       5       0       1     
  0       0       0       0       0       1       3       2       4       3
       8       9       5       0       1       0       0
2001    1       10      0       2       161     0       0       0       3  
     6       13      14      35      42      29      11      5       2     
  1       0       0       0       0       3       6       13      14      3
5      42      29      11      5       2       1       0
2002    1       10      0       2       345     0       0       0       2  
     11      32      51      64      84      72      22      6       0     
  1       0       0       0       0       2       11      32      51      6
4      84      72      22      6       0       1       0
2003    1       10      0       2       229     0       0       0       0  
     4       16      33      54      38      53      26      5       0     
  0       0       0       0       0       0       4       16      33      5
4      38      53      26      5       0       0       0
2004    1       10      0       2       151     0       0       0       2  
     0       5       12      38      44      41      8       1       0     
  0       0       0       0       0       2       0       5       12      3
8      44      41      8       1       0       0       0
2005    1       10      0       2       220     0       0       0       0  
     1       10      19      30      58      63      30      8       1     
  0       0       0       0       0       0       1       10      19      3
0      58      63      30      8       1       0       0
2006    1       10      0       2       221     0       0       0       0  
     3       8       15      35      54      61      38      5       1     
  0       1       0       0       0       0       3       8       15      3
5      54      61      38      5       1       0       1
2007    1       10      0       2       301     0       0       0       1  
     5       11      27      49      63      95      34      12      2     
  1       1       0       0       0       1       5       11      27      4
9      63      95      34      12      2       1       1
2008    1       10      0       2       396     0       0       0       4  
     9       18      29      37      93      117     68      17      2     
  1       1       0       0       0       4       9       18      29      3
7      93      117     68      17      2       1       1
2009    1       10      0       2       286     0       0       0       2  
     4       15      35      50      47      71      47      12      0     
  0       3       0       0       0       2       4       15      35      5
0      47      71      47      12      0       0       3
2010    1       10      0       2       228     0       0       0       0  
     0       10      23      43      42      55      43      11      1     
  0       0       0       0       0       0       0       10      23      4
3      42      55      43      11      1       0       0
2011    1       10      0       2       273     0       0       0       0  
     1       8       16      49      65      69      45      16      4     
  0       0       0       0       0       0       1       8       16      4
9      65      69      45      16      4       0       0
2012    1       10      0       2       213     0       0       0       0  
     1       2       11      31      33      65      48      15      5     
  2       0       0       0       0       0       1       2       11      3
1      33      65      48      15      5       2       0
2013    1       10      0       2       202     0       0       0       0  
     0       1       10      30      48      54      41      15      3     
  0       0       0       0       0       0       0       1       10      3
0      48      54      41      15      3       0       0
2014    1       10      0       2       58      0       0       0       0  
     1       1       4       7       9       15      13      6       2     
  0       0       0       0       0       0       1       1       4       7
       9       15      13      6       2       0       0

## #Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    
# 24cm    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    4
# 2cm    44cm    46cm+   repeat  m20     m22     m24     m26     m28     m3
# 0     m32     m34     m36     m38     m40     m42     m44     m46
## 2004    -1      10      0       1       23      0       0       0       
# 2       3       5       2       5       3       0       3       0       0
#        0       0       0       0       0       2       3       5       2 
#       5       3       0       3       0       0       0       0
## 2014    -1      -10     0       1       23      0       0       0       
# 2       3       5       2       5       3       0       3       0       0
#        0       0       0       0       0       2       3       5       2 
#       5       3       0       3       0       0       0       0

###     Oregon  Rec,    North,  Private/Rental
###     initially       assigning       to      fleet:  11_OR_NorthernOR_Re
# c_PR
#Yr     Seas    Flt/Svy Gender  Part    Nsamp   18cm    20cm    22cm    24c
# m    26cm    28cm    30cm    32cm    34cm    36cm    38cm    40cm    42cm
#     44cm    46cm+   repeat
1980    1       11      0       2       2       0       0       0       0  
     0       0       0       0       0       0       1       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       1       1       0       0       0
1982    1       11      0       2       8       0       0       0       0  
     0       0       0       0       2       2       2       2       0     
  0       0       0       0       0       0       0       0       0       0
       2       2       2       2       0       0       0
1984    1       11      0       2       4       0       0       0       0  
     0       0       1       1       0       0       0       1       1     
  0       0       0       0       0       0       0       0       1       1
       0       0       0       1       1       0       0
1985    1       11      0       2       6       0       0       0       0  
     0       0       1       1       2       1       1       0       0     
  0       0       0       0       0       0       0       0       1       1
       2       1       1       0       0       0       0
1987    1       11      0       2       7       0       0       0       1  
     0       0       0       0       1       1       1       2       1     
  0       0       0       0       0       1       0       0       0       0
       1       1       1       2       1       0       0
1988    1       11      0       2       1       0       0       0       0  
     0       1       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       1       0       0
       0       0       0       0       0       0       0
1989    1       11      0       2       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       1       0
1993    1       11      0       2       25      0       0       0       1  
     0       0       7       6       5       1       5       0       0     
  0       0       0       0       0       1       0       0       7       6
       5       1       5       0       0       0       0
1994    1       11      0       2       7       0       0       0       0  
     0       0       1       2       2       0       1       1       0     
  0       0       0       0       0       0       0       0       1       2
       2       0       1       1       0       0       0
1996    1       11      0       2       2       0       0       0       0  
     0       0       0       0       1       1       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       1       0       0       0       0       0
1997    1       11      0       2       6       0       0       0       0  
     0       0       2       1       1       1       1       0       0     
  0       0       0       0       0       0       0       0       2       1
       1       1       1       0       0       0       0
1998    1       11      0       2       10      0       0       0       0  
     0       0       2       2       4       1       1       0       0     
  0       0       0       0       0       0       0       0       2       2
       4       1       1       0       0       0       0
1999    1       11      0       2       6       0       0       0       2  
     0       0       0       0       0       3       0       1       0     
  0       0       0       0       0       2       0       0       0       0
       0       3       0       1       0       0       0
2000    1       11      0       2       4       0       0       0       0  
     0       0       0       0       1       3       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       3       0       0       0       0       0
2001    1       11      0       2       35      0       0       0       0  
     0       0       2       6       8       9       6       4       0     
  0       0       0       0       0       0       0       0       2       6
       8       9       6       4       0       0       0
2002    1       11      0       2       26      0       0       0       0  
     0       0       3       9       3       7       3       1       0     
  0       0       0       0       0       0       0       0       3       9
       3       7       3       1       0       0       0
2003    1       11      0       2       40      0       0       0       0  
     0       1       6       6       8       12      5       2       0     
  0       0       0       0       0       0       0       1       6       6
       8       12      5       2       0       0       0
2004    1       11      0       2       20      0       0       0       0  
     0       0       1       5       7       2       5       0       0     
  0       0       0       0       0       0       0       0       1       5
       7       2       5       0       0       0       0
2005    1       11      0       2       62      0       0       0       0  
     0       1       2       8       14      19      13      3       2     
  0       0       0       0       0       0       0       1       2       8
       14      19      13      3       2       0       0
2006    1       11      0       2       51      0       0       0       0  
     0       0       2       5       13      15      13      2       1     
  0       0       0       0       0       0       0       0       2       5
       13      15      13      2       1       0       0
2007    1       11      0       2       69      0       0       0       2  
     0       0       4       7       14      21      18      3       0     
  0       0       0       0       0       2       0       0       4       7
       14      21      18      3       0       0       0
2008    1       11      0       2       123     0       0       1       0  
     1       4       6       5       20      48      29      7       2     
  0       0       0       0       1       0       1       4       6       5
       20      48      29      7       2       0       0
2009    1       11      0       2       92      0       0       0       0  
     1       4       5       15      11      27      25      2       2     
  0       0       0       0       0       0       1       4       5       1
5      11      27      25      2       2       0       0
2010    1       11      0       2       97      0       0       0       0  
     0       1       8       9       20      24      23      9       3     
  0       0       0       0       0       0       0       1       8       9
       20      24      23      9       3       0       0
2011    1       11      0       2       111     0       0       0       0  
     0       1       8       13      20      23      32      13      1     
  0       0       0       0       0       0       0       1       8       1
3      20      23      32      13      1       0       0
2012    1       11      0       2       124     0       0       0       0  
     1       2       2       11      13      48      35      10      2     
  0       0       0       0       0       0       1       2       2       1
1      13      48      35      10      2       0       0
2013    1       11      0       2       123     0       0       0       0  
     0       0       2       17      24      37      33      10      0     
  0       0       0       0       0       0       0       0       2       1
7      24      37      33      10      0       0       0
2014    1       11      0       2       29      0       0       0       0  
     0       1       0       1       3       11      9       3       1     
  0       0       0       0       0       0       0       1       0       1
       3       11      9       3       1       0       0

47 #_N_age_bins
4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 
31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
2 #_N_ageerror_definitions
# Default ageing error matrix (1st row is expected age, 2nd is standard dev
# iation of age readings)
# Age 0 Age 1   Age 2   Age 3   Age 4   Age 5   Age 6   Age 7   Age 8   Age
#  9   Age 10  Age 11  Age 12  Age 13  Age 14  Age 15  Age 16  Age 17  Age 
# 18  Age 19  Age 20  Age 21  Age 22  Age 23  Age 24  Age 25  Age 26  Age 2
# 7  Age 28  Age 29  Age 30  Age 31  Age 32  Age 33  Age 34  Age 35  Age 36
#   Age 37  Age 38  Age 39  Age 40  Age 41  Age 42  Age 43  Age 44  Age 45 
#  Age 46  Age 47  Age 48  Age 49  Age 50  Age 51  Age 52  Age 53  Age 54  
# Age 55  Age 56  Age 57  Age 58  Age 59  Age 60  Age 61  Age 62  Age 63  A
# ge 64  Age 65  Age 66  Age 67  Age 68  Age 69  Age 70  Age 71  Age 72  Ag
# e 73  Age 74  Age 75  Age 76  Age 77  Age 78  Age 79  Age 80  ### Age 81 
#      Age 82  Age 83  Age 84  Age 85  Age 86  Age 87  Age 88  Age 89  Age 
0.5     1.5     2.5     3.5     4.5     5.5     6.5     7.5     8.5     9.5
     10.5    11.5    12.5    13.5    14.5    15.5    16.5    17.5    18.5  
  19.5    20.5    21.5    22.5    23.5    24.5    25.5    26.5    27.5    2
8.5    29.5    30.5    31.5    32.5    33.5    34.5    35.5    36.5    37.5
    38.5    39.5    40.5    41.5    42.5    43.5    44.5    45.5    46.5   
 47.5    48.5    49.5    50.5    51.5    52.5    53.5    54.5    55.5    56
.5    57.5    58.5    59.5    60.5    61.5    62.5    63.5    64.5    65.5 
   66.5    67.5    68.5    69.5    70.5    71.5    72.5    73.5    74.5    
75.5    76.5    77.5    78.5    79.5    80.5    ### 81.5        82.5    83.
# 5    84.5    85.5    86.5    87.5    88.5    89.5    90.5    #Expected_ag
0.0968  0.0968  0.1936  0.2904  0.3872  0.4840  0.5807  0.6775  0.7743  0.8
711  0.9679  1.0647  1.1615  1.2583  1.3551  1.4519  1.5487  1.6455  1.7422
  1.8390  1.9358  2.0326  2.1294  2.2262  2.3230  2.4198  2.5166  2.6134  2
.7102  2.8070  2.9037  3.0005  3.0973  3.1941  3.2909  3.3877  3.4845  3.58
13  3.6781  3.7749  3.8717  3.9684  4.0652  4.1620  4.2588  4.3556  4.4524 
 4.5492  4.6460  4.7428  4.8396  4.9364  5.0332  5.1299  5.2267  5.3235  5.
4203  5.5171  5.6139  5.7107  5.8075  5.9043  6.0011  6.0979  6.1946  6.291
4  6.3882  6.4850  6.5818  6.6786  6.7754  6.8722  6.9690  7.0658  7.1626  
7.2594  7.3561  7.4529  7.5497  7.6465  7.7433  ### 7.8401      7.9369  8.0
# 337  8.1305  8.2273  8.3241  8.4209  8.5176  8.6144  8.7112  #SD
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                ###
# Ageing error for ages associated with early years from former NWFSC age r
# eader (1st row is expected age, 2nd is standard deviation of age readings
# )                                                                        
#                                                                          
#                                                                          
#                                                                          
#                                                                          
#                                                                          
#                                                               ###
# Age 0 Age 1   Age 2   Age 3   Age 4   Age 5   Age 6   Age 7   Age 8   Age
#  9   Age 10  Age 11  Age 12  Age 13  Age 14  Age 15  Age 16  Age 17  Age 
# 18  Age 19  Age 20  Age 21  Age 22  Age 23  Age 24  Age 25  Age 26  Age 2
# 7  Age 28  Age 29  Age 30  Age 31  Age 32  Age 33  Age 34  Age 35  Age 36
#   Age 37  Age 38  Age 39  Age 40  Age 41  Age 42  Age 43  Age 44  Age 45 
#  Age 46  Age 47  Age 48  Age 49  Age 50  Age 51  Age 52  Age 53  Age 54  
# Age 55  Age 56  Age 57  Age 58  Age 59  Age 60  Age 61  Age 62  Age 63  A
# ge 64  Age 65  Age 66  Age 67  Age 68  Age 69  Age 70  Age 71  Age 72  Ag
# e 73  Age 74  Age 75  Age 76  Age 77  Age 78  Age 79  Age 80  ### Age 81 
#      Age 82  Age 83  Age 84  Age 85  Age 86  Age 87  Age 88  Age 89  Age 
0.43    1.29    2.16    3.02    3.88    4.75    5.61    6.47    7.33    8.2
0    9.06    9.92    10.79   11.65   12.51   13.37   14.24   15.10   15.96 
  16.83   17.69   18.55   19.41   20.28   21.14   22.00   22.86   23.73   2
4.59   25.45   26.32   27.18   28.04   28.90   29.77   30.63   31.49   32.3
6   33.22   34.08   34.94   35.81   36.67   37.53   38.40   39.26   40.12  
 40.98   41.85   42.71   43.57   44.44   45.30   46.16   47.02   47.89   48
.75   49.61   50.47   51.34   52.20   53.06   53.93   54.79   55.65   56.51
   57.38   58.24   59.10   59.97   60.83   61.69   62.55   63.42   64.28   
65.14   66.01   66.87   67.73   68.59   69.46   ### 70.32       71.18   72.
# 05   72.91   73.77   74.63   75.50   76.36   77.22   78.09   #Expected_ag
0.0968  0.0968  0.1936  0.2904  0.3872  0.4840  0.5807  0.6775  0.7743  0.8
711  0.9679  1.0647  1.1615  1.2583  1.3551  1.4519  1.5487  1.6455  1.7422
  1.8390  1.9358  2.0326  2.1294  2.2262  2.3230  2.4198  2.5166  2.6134  2
.7102  2.8070  2.9037  3.0005  3.0973  3.1941  3.2909  3.3877  3.4845  3.58
13  3.6781  3.7749  3.8717  3.9684  4.0652  4.1620  4.2588  4.3556  4.4524 
 4.5492  4.6460  4.7428  4.8396  4.9364  5.0332  5.1299  5.2267  5.3235  5.
4203  5.5171  5.6139  5.7107  5.8075  5.9043  6.0011  6.0979  6.1946  6.291
4  6.3882  6.4850  6.5818  6.6786  6.7754  6.8722  6.9690  7.0658  7.1626  
7.2594  7.3561  7.4529  7.5497  7.6465  7.7433  ### 7.8401      7.9369  8.0
# 337  8.1305  8.2273  8.3241  8.4209  8.5176  8.6144  8.7112  #SD

#154 #_N_Agecomp_obs
186 #_N_Agecomp_obs
3 #_Lbin_method: 1=poplenbins; 2=datalenbins; 3=lengths
0 #_combine males into females at or below this bin number

### OR Comm, dead landings, expanded by catch (mainly southern OR, landed d
# ead); 17/1393 fish from "live" fishery dropped; is dead catch representat
# ive of live fishery?
### initially assigning to fleet: "5_OR_SouthernOR_Comm_Dead"
### negative fleet because these data are represented below as conditioned 
# on length
#fishyr season  fleet   gender  part    ageErr  LbinLo  LbinHi  Nsamps  A4 
#      A5      A6      A7      A8      A9      A10     A11     A12     A13 
#     A14     A15     A16     A17     A18     A19     A20     A21     A22  
#    A23     A24     A25     A26     A27     A28     A29     A30     A31   
#   A32     A33     A34     A35     A36     A37     A38     A39     A40    
#  A41     A42     A43     A44     A45     A46     A47     A48     A49     
# A50     repeat
2001    1       -5      0       2       1       -1      -1      47      0  
     0       0       0       1.29    3.04    4.66    1       1.07    2     
  6.57    1.07    2.07    6.62    2.82    5.27    3.82    3.07    1.07    1
       1.07    0       1       1.29    0       1       1       0       1   
    0       0       0       0       0       1.07    1.75    0       0      
 0       0       0       0       0       0       0       0       3.12    0 
      0       0       0       1.29    3.04    4.66    1       1.07    2    
   6.57    1.07    2.07    6.62    2.82    5.27    3.82    3.07    1.07    
1       1.07    0       1       1.29    0       1       1       0       1  
     0       0       0       0       0       1.07    1.75    0       0     
2002    1       -5      0       2       1       -1      -1      121     0  
     0       0       2.01    4.23    11.34   9.14    6.12    1       9.32  
  7.42    10.11   9.07    4       6.17    15.77   3.39    4.16    2.06    4
.24    2.21    2       0       1.06    0       3.54    0       1.3     0   
    0       0       1       1.16    1.21    0       0       0       0      
 0       0       0       1.01    0       0       0       0       3.03    0 
      0       0       2.01    4.23    11.34   9.14    6.12    1       9.32 
   7.42    10.11   9.07    4       6.17    15.77   3.39    4.16    2.06    
4.24    2.21    2       0       1.06    0       3.54    0       1.3     0  
     0       0       1       1.16    1.21    0       0       0       0     
2003    1       -5      0       2       1       -1      -1      181     0  
     0       0       0       0       10.58   19      20.27   15.74   13.46 
  9.49    10.88   14.14   8.67    13.88   9.89    13.47   12.06   10.16   4
.27    4.82    7.15    1.37    1       1.35    3.89    0       1.35    1.22
    2       4.08    0       0       1.02    0       1       0       0      
 2.05    1.05    0       0       0       0       0       0       3.76    0 
      0       0       0       0       10.58   19      20.27   15.74   13.46
   9.49    10.88   14.14   8.67    13.88   9.89    13.47   12.06   10.16   
4.27    4.82    7.15    1.37    1       1.35    3.89    0       1.35    1.2
2    2       4.08    0       0       1.02    0       1       0       0     
2004    1       -5      0       2       1       -1      -1      55      0  
     0       0       0       0       1.01    4.09    7.18    7.12    3     
  0       6.52    2       2       1.02    1.02    4.02    4.08    1       4
.08    3.03    0       0       0       0       2.02    1       0       1   
    1       0       0       0       0       0       0       0       0      
 0       0       0       1.02    0       0       0       0       0       0 
      0       0       0       0       1.01    4.09    7.18    7.12    3    
   0       6.52    2       2       1.02    1.02    4.02    4.08    1       
4.08    3.03    0       0       0       0       2.02    1       0       1  
     1       0       0       0       0       0       0       0       0     
2005    1       -5      0       2       1       -1      -1      14      0  
     0       0       1       0       0       0       1       0       1     
  1       0       1.64    0       0       3       0       0       0       1
       0       1       0       1.64    0       0       0       0       0   
    0       0       0       1.6     0       0       1       0       0      
 0       0       0       0       0       0       0       0       1.6     0 
      0       0       1       0       0       0       1       0       1    
   1       0       1.64    0       0       3       0       0       0       
1       0       1       0       1.64    0       0       0       0       0  
     0       0       0       1.6     0       0       1       0       0     
2006    1       -5      0       2       1       -1      -1      29      0  
     0       0       0       0       0       0       4.88    2.88    4.88  
  2.75    2       2.14    0       1.75    0       1       1       0       3
.5     1       4.92    0       0       1       0       0       1.74    1   
    0       0       0       0       0       0       1.42    0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       4.88    2.88    4.88 
   2.75    2       2.14    0       1.75    0       1       1       0       
3.5     1       4.92    0       0       1       0       0       1.74    1  
     0       0       0       0       0       0       1.42    0       0     
2007    1       -5      0       2       1       -1      -1      40      0  
     0       0       0       0       0       0       0       5.55    4.07  
  5.27    5.78    1.52    1.75    2       4.03    1.52    3.52    4.55    1
.75    1.52    1       3.03    1.4     0       0       1.52    0       0   
    0       0       0       1       0       0       0       0       0      
 0       0       1.52    0       0       0       0       0       2.52    0 
      0       0       0       0       0       0       0       5.55    4.07 
   5.27    5.78    1.52    1.75    2       4.03    1.52    3.52    4.55    
1.75    1.52    1       3.03    1.4     0       0       1.52    0       0  
     0       0       0       1       0       0       0       0       0     
2008    1       -5      0       2       1       -1      -1      26      0  
     0       0       0       0       1       0       0       0       5.27  
  1       2       2       0       1       0       2       0       1.12    3
.02    1.02    2.05    1.05    0       1.02    2       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1.27    0 
      0       0       0       0       1       0       0       0       5.27 
   1       2       2       0       1       0       2       0       1.12    
3.02    1.02    2.05    1.05    0       1.02    2       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       -5      0       2       1       -1      -1      79      0  
     0       0       0       2.13    2.12    3.33    4.1     2       3.02  
  4.77    9.77    5.03    8.19    1       3.02    3       1       3.75    3
.77    7.1     4.02    1.75    3.05    3.18    1       1       1.11    1   
    0       1       0       0       0       0       0       0       0      
 0       0       0       1.75    0       0       0       0       2.75    0 
      0       0       0       2.13    2.12    3.33    4.1     2       3.02 
   4.77    9.77    5.03    8.19    1       3.02    3       1       3.75    
3.77    7.1     4.02    1.75    3.05    3.18    1       1       1.11    1  
     0       1       0       0       0       0       0       0       0     
2010    1       -5      0       2       1       -1      -1      65      0  
     0       0       0       0       0       1       5.12    1.75    3.05  
  5.8     5.26    4.23    5       3.02    1       3       1.2     0       0
       2       2       3       5       2       3       2.05    1       3.05
    2.32    0       1.54    0       0       1       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       1       5.12    1.75    3.05 
   5.8     5.26    4.23    5       3.02    1       3       1.2     0       
0       2       2       3       5       2       3       2.05    1       3.0
5    2.32    0       1.54    0       0       1       0       0       0     
2011    1       -5      0       2       1       -1      -1      307     0  
     0       0       1       1       5       3.21    7.49    27.48   7.08  
  10.89   8.04    17.17   21.74   29.1    24.18   18.03   6.75    9.17    8
.5     10.12   10.45   13.78   15.57   14.23   5.05    6.05    5.04    5.11
    3.35    4.04    1       2       2       1       0       2.03    2      
 1.03    1       1       1       2       0       0       0       6.5     0 
      0       0       1       1       5       3.21    7.49    27.48   7.08 
   10.89   8.04    17.17   21.74   29.1    24.18   18.03   6.75    9.17    
8.5     10.12   10.45   13.78   15.57   14.23   5.05    6.05    5.04    5.1
1    3.35    4.04    1       2       2       1       0       2.03    2     
2012    1       -5      0       2       1       -1      -1      152     0  
     0       0       0       2       4.02    4       7.15    6.09    8.39  
  2.1     3.03    5.02    4.16    6.91    16.04   10.09   4.14    6.3     5
       2       4.24    8.26    3.06    9.19    4       9.28    2       5   
    3       1       1       2       0       0       0       2       0      
 2.16    0       0       2       0       0       0       1       1       0 
      0       0       0       2       4.02    4       7.15    6.09    8.39 
   2.1     3.03    5.02    4.16    6.91    16.04   10.09   4.14    6.3     
5       2       4.24    8.26    3.06    9.19    4       9.28    2       5  
     3       1       1       2       0       0       0       2       0     
2013    1       -5      0       2       1       -1      -1      260     0  
     0       0       0       4.02    2.11    12.32   5.22    4.03    4     
  23.32   10.12   3.03    14.93   13.45   19.32   11.33   17.29   11.31   1
1.11   7.09    5.77    9.08    8.2     9.23    3.19    13.18   10.14   9.04
    3.02    3.01    5.3     2.75    1       0       2       0       0      
 1       1.02    0       2.06    0       0       0       0       4.25    0 
      0       0       0       4.02    2.11    12.32   5.22    4.03    4    
   23.32   10.12   3.03    14.93   13.45   19.32   11.33   17.29   11.31   
11.11   7.09    5.77    9.08    8.2     9.23    3.19    13.18   10.14   9.0
4    3.02    3.01    5.3     2.75    1       0       2       0       0     

### OR Rec South, 2005-2013, all modes combined,no BARSS
### initially assigning to fleet: "7_OR_SouthernOR_Rec_PC"
### negative fleet because these data are represented below as conditioned 
# on length
#fishyr season  fleet   gender  part    ageErr  LbinLo  LbinHi  Nsamps  A4 
#      A5      A6      A7      A8      A9      A10     A11     A12     A13 
#     A14     A15     A16     A17     A18     A19     A20     A21     A22  
#    A23     A24     A25     A26     A27     A28     A29     A30     A31   
#   A32     A33     A34     A35     A36     A37     A38     A39     A40    
#  A41     A42     A43     A44     A45     A46     A47     A48     A49     
# A50     repeat
2005    1       -7      0       2       1       -1      -1      32      0  
     0       0       0       1       1       3       2       5       0     
  3       3       3       1       0       2       2       1       1       1
       1       1       0       0       0       0       0       0       0   
    0       0       0       0       1       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       1       3       2       5       0    
   3       3       3       1       0       2       2       1       1       
1       1       1       0       0       0       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
2006    1       -7      0       2       1       -1      -1      32      0  
     0       0       1       1       0       0       0       0       4     
  3       2       2       4       4       0       1       1       2       1
       1       1       1       0       1       0       1       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       1       0       0       0       0       4    
   3       2       2       4       4       0       1       1       2       
1       1       1       1       0       1       0       1       0       1  
     0       0       0       0       0       0       0       0       0     
2007    1       -7      0       2       1       -1      -1      37      0  
     0       0       1       0       0       3       1       0       1     
  3       2       2       0       4       1       1       3       0       3
       2       2       3       3       1       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       3       1       0       1    
   3       2       2       0       4       1       1       3       0       
3       2       2       3       3       1       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2008    1       -7      0       2       1       -1      -1      31      0  
     0       0       0       1       2       0       1       2       5     
  3       3       0       3       0       1       2       0       1       1
       1       1       0       1       1       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       1       2       0       1       2       5    
   3       3       0       3       0       1       2       0       1       
1       1       1       0       1       1       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2009    1       -7      0       2       1       -1      -1      23      0  
     0       0       0       0       0       0       1       1       0     
  2       3       4       4       1       1       1       0       0       0
       1       0       0       0       3       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       1       0    
   2       3       4       4       1       1       1       0       0       
0       1       0       0       0       3       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       -7      0       2       1       -1      -1      37      0  
     0       0       1       0       0       0       0       1       0     
  0       1       3       3       3       4       2       1       0       0
       2       1       1       2       3       2       0       1       0   
    1       1       0       1       0       0       1       1       1      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       0       1       0    
   0       1       3       3       3       4       2       1       0       
0       2       1       1       2       3       2       0       1       0  
     1       1       0       1       0       0       1       1       1     
2011    1       -7      0       2       1       -1      -1      75      0  
     0       0       0       2       3       2       1       6       3     
  3       0       1       4       4       9       3       3       1       5
       2       3       1       3       2       3       1       0       2   
    1       2       1       0       0       1       0       0       1      
 0       0       0       1       0       0       1       0       0       0 
      0       0       0       2       3       2       1       6       3    
   3       0       1       4       4       9       3       3       1       
5       2       3       1       3       2       3       1       0       2  
     1       2       1       0       0       1       0       0       1     
2012    1       -7      0       2       1       -1      -1      27      0  
     0       0       0       2       1       0       1       0       1     
  1       1       0       3       1       4       1       0       0       0
       0       2       2       1       1       1       1       0       2   
    0       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       2       1       0       1       0       1    
   1       1       0       3       1       4       1       0       0       
0       0       2       2       1       1       1       1       0       2  
     0       0       1       0       0       0       0       0       0     
2013    1       -7      0       2       1       -1      -1      65      0  
     0       0       1       0       0       2       2       2       0     
  1       4       1       5       6       3       3       2       6       1
       2       3       3       3       1       2       2       0       0   
    3       0       1       1       1       0       0       2       0      
 0       0       1       0       0       0       1       0       0       0 
      0       0       1       0       0       2       2       2       0    
   1       4       1       5       6       3       3       2       6       
1       2       3       3       3       1       2       2       0       0  
     3       0       1       1       1       0       0       2       0     

### OR Rec North, 2002-2013, all modes combined, no BARSS
### initially assigning to fleet: "10_OR_NorthernOR_Rec_PC"
#fishyr season  fleet   gender  part    ageErr  LbinLo  LbinHi  Nsamps  A4 
#      A5      A6      A7      A8      A9      A10     A11     A12     A13 
#     A14     A15     A16     A17     A18     A19     A20     A21     A22  
#    A23     A24     A25     A26     A27     A28     A29     A30     A31   
#   A32     A33     A34     A35     A36     A37     A38     A39     A40    
#  A41     A42     A43     A44     A45     A46     A47     A48     A49     
# A50     repeat
2005    1       10      0       2       1       -1      -1      23      0  
     0       0       1       0       2       3       1       1       1     
  3       0       2       2       0       2       0       0       1       1
       0       2       1       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       2       3       1       1       1    
   3       0       2       2       0       2       0       0       1       
1       0       2       1       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       10      0       2       1       -1      -1      28      0  
     0       0       1       1       1       2       2       5       3     
  1       0       2       0       0       0       2       2       0       1
       2       0       0       0       0       0       1       1       0   
    0       0       0       0       0       0       0       0       1      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       1       1       2       2       5       3    
   1       0       2       0       0       0       2       2       0       
1       2       0       0       0       0       0       1       1       0  
     0       0       0       0       0       0       0       0       1     
2007    1       10      0       2       1       -1      -1      23      0  
     1       0       0       0       0       1       5       2       4     
  1       4       0       1       0       1       1       1       0       0
       0       0       0       0       0       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      1       0       0       0       0       1       5       2       4    
   1       4       0       1       0       1       1       1       0       
0       0       0       0       0       0       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       10      0       2       1       -1      -1      29      0  
     0       0       2       6       0       0       2       2       2     
  1       3       0       1       0       0       0       1       2       0
       2       2       0       0       0       0       1       0       0   
    0       0       1       0       0       1       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       2       6       0       0       2       2       2    
   1       3       0       1       0       0       0       1       2       
0       2       2       0       0       0       0       1       0       0  
     0       0       1       0       0       1       0       0       0     
2009    1       10      0       2       1       -1      -1      39      0  
     0       2       3       6       6       1       0       1       2     
  2       5       3       1       0       0       1       1       1       0
       0       0       0       1       0       2       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       2       3       6       6       1       0       1       2    
   2       5       3       1       0       0       1       1       1       
0       0       0       0       1       0       2       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       10      0       2       1       -1      -1      23      0  
     0       0       2       1       2       1       2       2       0     
  0       1       3       1       0       0       0       0       2       0
       2       1       0       1       1       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       2       1       2       1       2       2       0    
   0       1       3       1       0       0       0       0       2       
0       2       1       0       1       1       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2011    1       10      0       2       1       -1      -1      161     0  
     1       0       3       11      17      17      10      13      3     
  4       3       8       4       12      5       5       2       3       2
       3       1       4       2       2       3       1       5       5   
    2       1       0       3       1       0       0       0       0      
 1       0       2       0       0       1       0       0       1       0 
      1       0       3       11      17      17      10      13      3    
   4       3       8       4       12      5       5       2       3       
2       3       1       4       2       2       3       1       5       5  
     2       1       0       3       1       0       0       0       0     
2012    1       10      0       2       1       -1      -1      33      0  
     0       0       0       3       3       9       2       0       3     
  0       0       1       2       2       0       2       0       1       0
       0       0       1       0       1       1       1       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       3       3       9       2       0       3    
   0       0       1       2       2       0       2       0       1       
0       0       0       1       0       1       1       1       0       0  
     1       0       0       0       0       0       0       0       0     
2013    1       10      0       2       1       -1      -1      81      0  
     1       0       0       3       3       8       12      3       4     
  8       1       1       3       3       3       3       2       3       2
       3       3       2       1       0       2       1       2       1   
    0       0       0       1       0       0       1       0       0      
 0       0       0       0       0       0       0       0       1       0 
      1       0       0       3       3       8       12      3       4    
   8       1       1       3       3       3       3       2       3       
2       3       3       2       1       0       2       1       2       1  
     0       0       0       1       0       0       1       0       0     

### WA Rec, South, All modes combined
### initially assigning to fleet: "12_WA_SouthernWA_Rec_PCPR"
#Yr     Seas    Flt/Svy Gender  Part    AgeError        LbinLo  LbinHi  Nsa
# mp   4yrs    5yrs    6yrs    7yrs    8yrs    9yrs    10yrs   11yrs   12yr
# s   13yrs   14yrs   15yrs   16yrs   17yrs   18yrs   19yrs   20yrs   21yrs
#    22yrs   23yrs   24yrs   25yrs   26yrs   27yrs   28yrs   29yrs   30yrs 
#   31yrs   32yrs   33yrs   34yrs   35yrs   36yrs   37yrs   38yrs   39yrs  
#  40yrs   41yrs   42yrs   43yrs   44yrs   45yrs   46yrs   47yrs   48yrs   
# 49yrs   50+yrs  repeat
-2014    1       -12      0       2       1       -1      -1      15      0
       0       0       0       1       0       0       0       0       0   
    0       0       0       1       1       1       0       0       0      
 1       1       0       0       1       1       1       2       0       0 
      0       0       1       0       1       0       0       0       0    
   0       0       1       1       0       0       0       0       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       1       1       1       0       0       0     
  1       1       0       0       1       1       1       2       0       0
       0       0       1       0       1       0       0       0       0   


##### conditional age-at-length observations

### OR commercial dead, South
### initially assigning to fleet: "5_OR_SouthernOR_Comm_Dead"
#Yr     Seas    Flt/Svy Gender  Part    AgeErr  LbinLo  LbinHi  Nsamp   4yr
# s    5yrs    6yrs    7yrs    8yrs    9yrs    10yrs   11yrs   12yrs   13yr
# s   14yrs   15yrs   16yrs   17yrs   18yrs   19yrs   20yrs   21yrs   22yrs
#    23yrs   24yrs   25yrs   26yrs   27yrs   28yrs   29yrs   30yrs   31yrs 
#   32yrs   33yrs   34yrs   35yrs   36yrs   37yrs   38yrs   39yrs   40yrs  
#  41yrs   42yrs   43yrs   44yrs   45yrs   46yrs   47yrs   48yrs   49yrs   
# 50yrs   repeat
2001    1       5       0       2       1       28      28      1       0  
     0       0       0       1       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2001    1       5       0       2       1       30      30      7       0  
     0       0       0       0       2       0       0       0       0     
  2       0       0       1       0       1       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       2       0       0       0       0    
   2       0       0       1       0       1       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2001    1       5       0       2       1       32      32      9       0  
     0       0       0       0       0       2       0       1       1     
  2       0       0       0       2       0       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       2       0       1       1    
   2       0       0       0       2       0       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2001    1       5       0       2       1       34      34      12      0  
     0       0       0       0       0       2       1       0       1     
  1       1       2       0       0       1       1       0       0       0
       0       0       1       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       2       1       0       1    
   1       1       2       0       0       1       1       0       0       
0       0       0       1       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2001    1       5       0       2       1       36      36      11      0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       3       0       2       0       1       1       0
       0       0       0       0       0       0       0       0       1   
    0       0       0       0       0       1       1       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       3       0       2       0       1       1       
0       0       0       0       0       0       0       0       0       1  
     0       0       0       0       0       1       1       0       0     
2001    1       5       0       2       1       38      38      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       2       0       1
       1       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       2       0       
1       1       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2001    1       5       0       2       1       40      40      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       1       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       1       1       0       0  
     0       0       0       0       0       0       0       0       0     
2002    1       5       0       2       1       30      30      17      0  
     0       0       1       1       3       3       1       0       1     
  2       2       2       1       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       1       3       3       1       0       1    
   2       2       2       1       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2002    1       5       0       2       1       32      32      37      0  
     0       0       0       0       6       4       2       0       3     
  3       2       4       0       3       3       2       0       0       1
       1       0       0       0       0       2       0       0       0   
    0       0       0       0       1       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       6       4       2       0       3    
   3       2       4       0       3       3       2       0       0       
1       1       0       0       0       0       2       0       0       0  
     0       0       0       0       1       0       0       0       0     
2002    1       5       0       2       1       34      34      31      0  
     0       0       0       3       1       1       3       1       4     
  0       3       1       0       3       5       0       3       1       1
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       3       1       1       3       1       4    
   0       3       1       0       3       5       0       3       1       
1       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2002    1       5       0       2       1       36      36      21      0  
     0       0       1       0       0       1       0       0       1     
  2       1       2       2       0       5       1       0       0       2
       1       0       0       0       0       1       0       1       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       1       0       0       1    
   2       1       2       2       0       5       1       0       0       
2       1       0       0       0       0       1       0       1       0  
     0       0       0       0       0       0       0       0       0     
2002    1       5       0       2       1       38      38      12      0  
     0       0       0       0       0       0       0       0       0     
  0       2       0       1       0       2       0       1       1       0
       0       1       0       0       0       0       0       0       0   
    0       0       1       1       0       0       0       0       0      
 0       0       0       1       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       2       0       1       0       2       0       1       1       
0       0       1       0       0       0       0       0       0       0  
     0       0       1       1       0       0       0       0       0     
2002    1       5       0       2       1       40      40      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       2       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2003    1       5       0       2       1       28      28      2       0  
     0       0       0       0       0       1       0       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       1       0       1       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2003    1       5       0       2       1       30      30      20      0  
     0       0       0       0       3       3       4       2       2     
  1       0       1       2       0       1       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       3       3       4       2       2    
   1       0       1       2       0       1       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2003    1       5       0       2       1       32      32      48      0  
     0       0       0       0       2       9       6       6       4     
  0       2       2       1       2       2       3       0       2       2
       2       0       0       0       0       1       0       0       0   
    0       2       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       2       9       6       6       4    
   0       2       2       1       2       2       3       0       2       
2       2       0       0       0       0       1       0       0       0  
     0       2       0       0       0       0       0       0       0     
2003    1       5       0       2       1       34      34      48      0  
     0       0       0       0       1       2       3       2       2     
  3       5       5       3       5       3       3       6       1       1
       0       2       0       0       0       0       0       0       0   
    0       0       0       0       1       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       2       3       2       2    
   3       5       5       3       5       3       3       6       1       
1       0       2       0       0       0       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
2003    1       5       0       2       1       36      36      39      0  
     0       0       0       0       1       0       2       1       2     
  2       2       3       1       0       1       3       4       3       0
       1       3       1       1       1       2       0       1       1   
    2       0       0       0       0       0       1       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       2       1       2    
   2       2       3       1       0       1       3       4       3       
0       1       3       1       1       1       2       0       1       1  
     2       0       0       0       0       0       1       0       0     
2003    1       5       0       2       1       38      38      17      0  
     0       0       0       0       1       0       0       0       1     
  1       0       1       0       3       0       2       1       3       1
       1       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 2       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       0       1    
   1       0       1       0       3       0       2       1       3       
1       1       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2003    1       5       0       2       1       40      40      7       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       1       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       1       0       0       0       0       0       0       0      
 0       1       0       0       0       0       0       0       3       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       1       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       1       0       0       0       0       0       0       0     
2004    1       5       0       2       1       30      30      10      0  
     0       0       0       0       1       2       1       2       2     
  0       2       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       2       1       2       2    
   0       2       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2004    1       5       0       2       1       32      32      13      0  
     0       0       0       0       0       1       3       3       1     
  0       2       0       0       0       0       0       1       0       1
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       1       0       0       0       0       0       0 
      0       0       0       0       0       1       3       3       1    
   0       2       0       0       0       0       0       1       0       
1       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2004    1       5       0       2       1       34      34      17      0  
     0       0       0       0       0       0       2       2       0     
  0       1       1       2       1       1       2       1       1       0
       1       0       0       0       0       1       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       2       2       0    
   0       1       1       2       1       1       2       1       1       
0       1       0       0       0       0       1       0       0       0  
     1       0       0       0       0       0       0       0       0     
2004    1       5       0       2       1       36      36      9       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       0       1       0       0       3
       2       0       0       0       0       0       1       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       0       0       1       0       0       
3       2       0       0       0       0       0       1       0       1  
     0       0       0       0       0       0       0       0       0     
2004    1       5       0       2       1       38      38      6       0  
     0       0       0       0       0       1       1       0       0     
  0       0       1       0       0       0       1       1       0       0
       0       0       0       0       0       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       1       1       0       0    
   0       0       1       0       0       0       1       1       0       
0       0       0       0       0       0       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2004    1       5       0       2       1       40      40      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       1       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       1       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       5       0       2       1       30      30      2       0  
     0       0       1       0       0       0       0       0       0     
  1       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       0       0       0    
   1       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       5       0       2       1       32      32      2       0  
     0       0       0       0       0       0       1       0       0     
  0       0       1       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       0    
   0       0       1       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       5       0       2       1       34      34      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       1       0       0       0       0
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       1       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       1       0       0       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       1       0       0     
2005    1       5       0       2       1       36      36      1       0  
     0       0       0       0       0       0       0       0       1     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       5       0       2       1       38      38      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       2       0       0       0       1
       0       0       0       0       0       0       0       0       0   
    0       0       0       1       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       2       0       0       0       
1       0       0       0       0       0       0       0       0       0  
     0       0       0       1       0       0       0       0       0     
2005    1       5       0       2       1       40      40      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       5       0       2       1       30      30      1       0  
     0       0       0       0       0       0       0       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       5       0       2       1       32      32      8       0  
     0       0       0       0       0       0       2       0       3     
  1       1       0       0       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       2       0       3    
   1       1       0       0       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       5       0       2       1       34      34      10      0  
     0       0       0       0       0       0       2       1       1     
  1       0       1       0       1       0       0       0       0       1
       1       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       2       1       1    
   1       0       1       0       1       0       0       0       0       
1       1       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       5       0       2       1       36      36      6       0  
     0       0       0       0       0       0       0       0       0     
  0       1       1       0       0       0       1       1       0       1
       0       0       0       0       0       0       0       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       1       0       0       0       1       1       0       
1       0       0       0       0       0       0       0       0       1  
     0       0       0       0       0       0       0       0       0     
2006    1       5       0       2       1       38      38      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       1       0       0       1       0       0       1       0   
    0       0       0       0       0       0       1       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       1       0       0       1       0       0       1       0  
     0       0       0       0       0       0       1       0       0     
2007    1       5       0       2       1       30      30      1       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       5       0       2       1       32      32      10      0  
     0       0       0       0       0       0       0       3       1     
  1       1       0       0       0       2       0       1       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       1       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       3       1    
   1       1       0       0       0       2       0       1       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       1       0       0       0       0       0     
2007    1       5       0       2       1       34      34      11      0  
     0       0       0       0       0       0       0       1       1     
  1       1       0       0       1       0       0       0       2       1
       1       0       1       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       1       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       1    
   1       1       0       0       1       0       0       0       2       
1       1       0       1       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       5       0       2       1       36      36      10      0  
     0       0       0       0       0       0       0       0       1     
  1       1       1       0       1       0       0       1       1       0
       0       1       1       0       0       0       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   1       1       1       0       1       0       0       1       1       
0       0       1       1       0       0       0       1       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       5       0       2       1       38      38      5       0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       1       0       1       1       1       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       0       1       0       1       1       1       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       5       0       2       1       40      40      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
#       change  Lbin_lo and     Lbin_hi for     next    line    from    54 
#      to      48      (length bin     plus    group   is      48+)
2007    1       5       0       2       1       48      48      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       30      30      2       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       1
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
1       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       32      32      5       0  
     0       0       0       0       0       0       0       0       2     
  0       1       1       0       0       0       0       0       1       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       2    
   0       1       1       0       0       0       0       0       1       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       34      34      9       0  
     0       0       0       0       0       0       0       0       3     
  1       1       0       0       1       0       1       0       0       1
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       3    
   1       1       0       0       1       0       1       0       0       
1       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       36      36      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       1       0       0       0       0       0       0       0
       1       0       0       0       0       2       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       1       0       0       0       0       0       0       
0       1       0       0       0       0       2       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       38      38      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       1
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
1       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       5       0       2       1       40      40      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       1       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       1       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       30      30      6       0  
     0       0       0       2       1       0       0       0       0     
  1       0       1       0       0       0       0       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       2       1       0       0       0       0    
   1       0       1       0       0       0       0       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       32      32      20      0  
     0       0       0       0       1       2       1       2       2     
  1       3       1       2       1       0       1       0       1       0
       1       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       2       1       2       2    
   1       3       1       2       1       0       1       0       1       
0       1       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       34      34      23      0  
     0       0       0       0       0       1       3       0       0     
  1       2       2       4       0       0       1       0       1       2
       3       0       1       0       0       1       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       1       3       0       0    
   1       2       2       4       0       0       1       0       1       
2       3       0       1       0       0       1       1       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       36      36      14      0  
     0       0       0       0       0       0       0       0       1     
  1       2       1       0       0       1       0       0       0       0
       1       1       0       2       0       0       0       1       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       1       0       0       0       1       0       0 
      0       0       0       0       0       0       0       0       1    
   1       2       1       0       0       1       0       0       0       
0       1       1       0       2       0       0       0       1       1  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       38      38      10      0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       2       1       0       0       1
       1       0       0       1       2       0       0       0       0   
    0       1       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       0       2       1       0       0       
1       1       0       0       1       2       0       0       0       0  
     0       1       0       0       0       0       0       0       0     
2009    1       5       0       2       1       40      40      3       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       5       0       2       1       42      42      3       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       1       1       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       1       1       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       5       0       2       1       30      30      2       0  
     0       0       0       0       0       0       1       0       1     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       1    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       5       0       2       1       32      32      13      0  
     0       0       0       0       0       0       3       1       1     
  3       1       1       0       0       0       0       1       0       0
       0       0       0       0       0       1       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       3       1       1    
   3       1       1       0       0       0       0       1       0       
0       0       0       0       0       0       1       1       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       5       0       2       1       34      34      17      0  
     0       0       0       0       0       1       0       0       1     
  0       1       2       4       1       0       2       0       0       0
       1       0       1       0       0       0       1       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       1       0       0       1    
   0       1       2       4       1       0       2       0       0       
0       1       0       1       0       0       0       1       0       1  
     0       0       0       0       0       0       0       0       0     
2010    1       5       0       2       1       36      36      21      0  
     0       0       0       0       0       0       1       0       0     
  2       2       1       0       1       1       1       0       0       0
       0       2       1       4       2       0       0       1       1   
    0       0       0       0       0       1       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       0    
   2       2       1       0       1       1       1       0       0       
0       0       2       1       4       2       0       0       1       1  
     0       0       0       0       0       1       0       0       0     
2010    1       5       0       2       1       38      38      7       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       1       1       0       0       0       0       0
       1       0       0       1       0       0       0       0       0   
    1       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       1       1       0       0       0       0       
0       1       0       0       1       0       0       0       0       0  
     1       0       1       0       0       0       0       0       0     
2010    1       5       0       2       1       40      40      5       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       1       0       0       2       0       0       1   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       1       0       0       2       0       0       1  
     1       0       0       0       0       0       0       0       0     
2011    1       5       0       2       1       30      30      21      0  
     0       0       0       1       2       2       1       6       0     
  2       0       1       3       0       0       1       0       0       1
       0       0       1       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       2       2       1       6       0    
   2       0       1       3       0       0       1       0       0       
1       0       0       1       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       5       0       2       1       32      32      46      0  
     0       0       1       0       3       0       3       9       1     
  2       3       1       5       4       2       1       0       1       2
       1       0       1       4       1       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       3       0       3       9       1    
   2       3       1       5       4       2       1       0       1       
2       1       0       1       4       1       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2011    1       5       0       2       1       34      34      84      0  
     0       0       0       0       0       1       3       8       1     
  2       2       9       6       10      6       4       2       6       2
       3       2       3       2       2       2       2       1       0   
    0       0       0       2       0       0       0       1       0      
 0       0       1       0       1       0       0       0       0       0 
      0       0       0       0       0       1       3       8       1    
   2       2       9       6       10      6       4       2       6       
2       3       2       3       2       2       2       2       1       0  
     0       0       0       2       0       0       0       1       0     
2011    1       5       0       2       1       36      36      93      0  
     0       0       0       0       0       0       0       4       3     
  2       2       4       4       10      10      6       3       1       2
       4       5       5       4       7       2       3       2       2   
    1       2       1       0       0       1       0       1       0      
 0       0       0       1       1       0       0       0       0       0 
      0       0       0       0       0       0       0       4       3    
   2       2       4       4       10      10      6       3       1       
2       4       5       5       4       7       2       3       2       2  
     1       2       1       0       0       1       0       1       0     
2011    1       5       0       2       1       38      38      43      0  
     0       0       0       0       0       0       0       0       1     
  2       1       1       3       2       3       4       1       1       1
       2       2       3       3       2       0       1       1       3   
    1       2       0       0       1       0       0       0       2      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   2       1       1       3       2       3       4       1       1       
1       2       2       3       3       2       0       1       1       3  
     1       2       0       0       1       0       0       0       2     
2011    1       5       0       2       1       40      40      15      0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       1       0       1       0       0       0
       0       1       0       1       2       1       1       1       0   
    0       0       0       0       1       0       0       0       0      
 1       1       0       0       0       0       0       0       3       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       1       0       1       0       0       
0       0       1       0       1       2       1       1       1       0  
     0       0       0       0       1       0       0       0       0     
2011    1       5       0       2       1       42      42      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       1       0       1       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       2       0 
      0       0       0       0       0       0       0       0       0    
   0       0       1       0       1       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       5       0       2       1       46      46      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       1       1       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       1       1       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       5       0       2       1       26      26      1       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       5       0       2       1       28      28      2       0  
     0       0       0       0       0       0       0       1       0     
  0       0       1       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       0       1       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       5       0       2       1       30      30      8       0  
     0       0       0       0       1       1       4       2       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       1       4       2       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       5       0       2       1       32      32      21      0  
     0       0       0       1       1       2       2       2       3     
  0       1       0       2       0       2       1       0       1       0
       0       1       0       1       0       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       1       2       2       2       3    
   0       1       0       2       0       2       1       0       1       
0       0       1       0       1       0       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       5       0       2       1       34      34      29      0  
     0       0       0       0       1       1       1       1       3     
  1       0       0       1       2       4       1       3       1       0
       0       0       2       1       1       0       2       0       0   
    1       0       0       1       0       0       0       0       0      
 0       0       0       1       0       0       0       0       0       0 
      0       0       0       0       1       1       1       1       3    
   1       0       0       1       2       4       1       3       1       
0       0       0       2       1       1       0       2       0       0  
     1       0       0       1       0       0       0       0       0     
2012    1       5       0       2       1       36      36      41      0  
     0       0       0       1       0       0       0       0       2     
  1       1       1       1       2       5       3       0       3       2
       2       3       3       1       3       2       2       0       2   
    0       0       0       0       0       0       0       1       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       0       0       0       2    
   1       1       1       1       2       5       3       0       3       
2       2       3       3       1       3       2       2       0       2  
     0       0       0       0       0       0       0       1       0     
2012    1       5       0       2       1       38      38      26      0  
     0       0       0       0       0       0       0       0       0     
  0       0       3       0       2       3       4       1       1       1
       0       0       2       0       1       1       2       1       1   
    0       0       0       1       0       0       0       0       0      
 0       0       0       1       0       0       0       1       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       3       0       2       3       4       1       1       
1       0       0       2       0       1       1       2       1       1  
     0       0       0       1       0       0       0       0       0     
2012    1       5       0       2       1       40      40      15      0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       1       0       0       0       2
       0       0       1       0       4       0       1       1       0   
    2       1       0       0       0       0       0       1       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       1       0       0       0       
2       0       0       1       0       4       0       1       1       0  
     2       1       0       0       0       0       0       1       0     
2012    1       5       0       2       1       42      42      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       1       0       0   
    0       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       1       0       0  
     0       0       1       0       0       0       0       0       0     
2012    1       5       0       2       1       46      46      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       5       0       2       1       28      28      1       0  
     0       0       0       0       0       0       1       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       5       0       2       1       30      30      15      0  
     0       0       0       2       0       1       1       1       1     
  2       1       0       3       2       0       0       1       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       2       0       1       1       1       1    
   2       1       0       3       2       0       0       1       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       5       0       2       1       32      32      42      0  
     0       0       0       1       1       7       3       3       1     
  4       4       0       1       0       5       2       3       2       0
       0       0       0       2       1       0       0       0       2   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       1       7       3       3       1    
   4       4       0       1       0       5       2       3       2       
0       0       0       0       2       1       0       0       0       2  
     0       0       0       0       0       0       0       0       0     
2013    1       5       0       2       1       34      34      68      0  
     0       0       0       0       1       2       0       0       0     
  9       2       1       4       3       12      2       4       2       6
       1       2       5       2       4       0       1       3       1   
    0       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       2       0       0       0    
   9       2       1       4       3       12      2       4       2       
6       1       2       5       2       4       0       1       3       1  
     0       0       1       0       0       0       0       0       0     
2013    1       5       0       2       1       36      36      83      0  
     0       0       0       1       0       2       0       0       1     
  7       2       2       6       6       2       5       4       5       5
       5       2       3       2       3       2       3       2       4   
    1       0       3       2       1       0       0       0       0      
 0       0       0       1       0       0       0       0       1       0 
      0       0       0       1       0       2       0       0       1    
   7       2       2       6       6       2       5       4       5       
5       5       2       3       2       3       2       3       2       4  
     1       0       3       2       1       0       0       0       0     
2013    1       5       0       2       1       38      38      35      0  
     0       0       0       0       0       0       0       0       1     
  1       1       0       0       2       0       1       5       2       0
       0       1       1       1       0       0       7       4       1   
    1       3       0       0       0       0       1       0       0      
 0       1       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       1    
   1       1       0       0       2       0       1       5       2       
0       0       1       1       1       0       0       7       4       1  
     1       3       0       0       0       0       1       0       0     
2013    1       5       0       2       1       40      40      14      0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       1       0       0       1       1       1       2       1       1   
    0       0       1       0       0       0       0       0       0      
 1       0       0       1       0       0       0       0       2       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
0       1       0       0       1       1       1       2       1       1  
     0       0       1       0       0       0       0       0       0     
2013    1       5       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     1       0       0       0       0       0       0       0       0     

### OR rec private, South
#Yr     Seas    Flt/Svy Gender  Part    AgeErr  LbinLo  LbinHi  Nsamp   4yr
# s    5yrs    6yrs    7yrs    8yrs    9yrs    10yrs   11yrs   12yrs   13yr
# s   14yrs   15yrs   16yrs   17yrs   18yrs   19yrs   20yrs   21yrs   22yrs
#    23yrs   24yrs   25yrs   26yrs   27yrs   28yrs   29yrs   30yrs   31yrs 
#   32yrs   33yrs   34yrs   35yrs   36yrs   37yrs   38yrs   39yrs   40yrs  
#  41yrs   42yrs   43yrs   44yrs   45yrs   46yrs   47yrs   48yrs   49yrs   
# 50yrs   repeat
2005    1       7       0       2       1       30      30      1       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       32      32      3       0  
     0       0       0       1       0       1       0       0       0     
  0       0       1       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       1       0       0       0    
   0       0       1       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       34      34      8       0  
     0       0       0       0       0       2       1       2       0     
  1       0       1       0       0       0       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       2       1       2       0    
   1       0       1       0       0       0       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       36      36      11      0  
     0       0       0       0       0       0       1       3       0     
  1       1       1       1       0       0       1       1       0       1
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       3       0    
   1       1       1       1       0       0       1       1       0       
1       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       38      38      5       0  
     0       0       0       0       0       0       0       0       0     
  0       2       0       0       0       2       0       0       1       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       2       0       0       0       2       0       0       1       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       40      40      3       0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       0       0       0       0       0       0       0
       1       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       0       0       0       0       0       0       0       
0       1       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2005    1       7       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       1       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       1       0       0       0       0     
2006    1       7       0       2       1       28      28      1       0  
     0       0       1       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       7       0       2       1       30      30      2       0  
     0       0       0       1       0       0       0       0       1     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       0       0       0       1    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       7       0       2       1       32      32      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       2       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       2       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       7       0       2       1       34      34      5       0  
     0       0       0       0       0       0       0       0       2     
  2       0       0       0       0       0       0       0       0       1
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       2    
   2       0       0       0       0       0       0       0       0       
1       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2006    1       7       0       2       1       36      36      13      0  
     0       0       0       0       0       0       0       0       1     
  1       2       0       2       2       0       0       0       1       0
       1       1       1       0       0       0       0       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   1       2       0       2       2       0       0       0       1       
0       1       1       1       0       0       0       0       0       1  
     0       0       0       0       0       0       0       0       0     
2006    1       7       0       2       1       38      38      9       0  
     0       0       0       0       0       0       0       0       0     
  0       0       2       2       0       0       1       1       1       0
       0       0       0       0       1       0       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       2       2       0       0       1       1       1       
0       0       0       0       0       1       0       1       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       30      30      2       0  
     0       0       1       0       0       0       1       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       1       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       32      32      8       0  
     0       0       0       0       0       3       0       0       0     
  0       1       1       0       1       0       0       1       0       0
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       3       0       0       0    
   0       1       1       0       1       0       0       1       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       34      34      8       0  
     0       0       0       0       0       0       0       0       1     
  1       0       0       0       0       1       0       0       0       3
       0       0       2       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   1       0       0       0       0       1       0       0       0       
3       0       0       2       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       36      36      8       0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       0       2       0       1       2       0       0
       0       0       0       1       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       0       0       2       0       1       2       0       
0       0       0       0       1       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       38      38      6       0  
     0       0       0       0       0       0       0       0       0     
  1       0       1       0       0       0       0       0       0       0
       1       1       1       0       0       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       1       0       0       0       0       0       0       
0       1       1       1       0       0       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       40      40      4       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       1       0       0       0       0       0
       0       1       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       1       0       0       0       0       
0       0       1       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2007    1       7       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       1       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       1       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       30      30      1       0  
     0       0       0       0       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       32      32      4       0  
     0       0       0       1       1       0       0       0       0     
  2       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       1       0       0       0       0    
   2       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       34      34      9       0  
     0       0       0       0       0       0       1       1       3     
  1       1       0       0       0       0       0       0       1       0
       1       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       1       3    
   1       1       0       0       0       0       0       0       1       
0       1       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       36      36      8       0  
     0       0       0       0       0       0       0       1       2     
  0       2       0       1       0       1       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       2    
   0       2       0       1       0       1       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       38      38      6       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       2       0       0       1       0       0       1
       0       0       0       1       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       2       0       0       1       0       0       
1       0       0       0       1       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       40      40      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    1       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     1       0       0       0       0       0       0       0       0     
2008    1       7       0       2       1       42      42      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       1       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       32      32      1       0  
     0       0       0       0       0       0       1       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       34      34      5       0  
     0       0       0       0       0       0       0       0       0     
  2       0       0       1       1       0       0       0       0       0
       0       0       0       0       0       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   2       0       0       1       1       0       0       0       0       
0       0       0       0       0       0       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       36      36      10      0  
     0       0       0       0       0       0       0       0       0     
  0       3       1       3       0       0       1       0       0       0
       1       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       3       1       3       0       0       1       0       0       
0       1       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       38      38      4       0  
     0       0       0       0       0       0       0       1       0     
  0       0       1       0       0       1       0       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       0       1       0       0       1       0       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       40      40      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       1       0       0       0       0       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       1       0       0       0       0       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2009    1       7       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       1       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       1       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       30      30      1       0  
     0       0       1       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       32      32      3       0  
     0       0       0       0       0       0       0       0       0     
  0       1       0       0       0       1       0       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       1       0       0       0       1       0       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       34      34      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       1       1       0       1       0       0
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       1       1       0       1       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       36      36      10      0  
     0       0       0       0       0       0       0       0       0     
  0       0       2       1       1       2       0       0       0       0
       1       0       1       0       1       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       2       1       1       2       0       0       0       
0       1       0       1       0       1       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       38      38      11      0  
     0       0       0       0       0       0       0       1       0     
  0       0       1       2       1       0       0       0       0       0
       1       0       0       1       0       1       0       0       0   
    0       0       0       1       0       0       1       1       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       0       1       2       1       0       0       0       0       
0       1       0       0       1       0       1       0       0       0  
     0       0       0       1       0       0       1       1       0     
2010    1       7       0       2       1       40      40      5       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       0       1       0       0       0       0       0       0       0   
    1       1       0       0       0       0       0       0       1      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
0       0       1       0       0       0       0       0       0       0  
     1       1       0       0       0       0       0       0       1     
2010    1       7       0       2       1       42      42      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2010    1       7       0       2       1       44      44      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       1       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       1       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       28      28      2       0  
     0       0       0       0       0       0       0       0       1     
  0       0       0       0       1       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   0       0       0       0       1       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       30      30      2       0  
     0       0       0       0       1       0       0       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       1       0       0       1       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       32      32      4       0  
     0       0       0       1       0       0       0       0       1     
  1       0       0       0       0       0       0       0       1       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       0       0       0       1    
   1       0       0       0       0       0       0       0       1       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       34      34      17      0  
     0       0       0       1       2       1       1       2       0     
  0       0       0       2       2       3       0       1       0       1
       0       0       1       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       2       1       1       2       0    
   0       0       0       2       2       3       0       1       0       
1       0       0       1       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       36      36      25      0  
     0       0       0       0       0       0       0       3       1     
  0       0       1       1       1       4       2       1       0       1
       2       2       0       2       0       1       1       0       1   
    0       0       0       0       0       0       0       0       0      
 0       0       0       1       0       0       0       0       0       0 
      0       0       0       0       0       0       0       3       1    
   0       0       1       1       1       4       2       1       0       
1       2       2       0       2       0       1       1       0       1  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       38      38      15      0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       1       0       1       1       1       0       3
       0       1       0       0       1       2       0       0       1   
    0       0       0       0       0       1       0       0       0      
 0       0       0       0       0       0       1       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       0       1       0       1       1       1       0       
3       0       1       0       0       1       2       0       0       1  
     0       0       0       0       0       1       0       0       0     
2011    1       7       0       2       1       40      40      6       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       1       0       0       0       0
       0       0       0       1       0       0       0       0       0   
    1       2       0       0       0       0       0       0       1      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       1       0       0       0       
0       0       0       0       1       0       0       0       0       0  
     1       2       0       0       0       0       0       0       1     
2011    1       7       0       2       1       44      44      2       0  
     0       0       0       0       0       1       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       1       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       1       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       1       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2011    1       7       0       2       1       46      46      2       0  
     0       0       0       0       0       0       0       0       0     
  1       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       1       0       0       0       0       0       0     
2012    1       7       0       2       1       26      26      1       0  
     0       0       0       1       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       32      32      2       0  
     0       0       0       1       1       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       1       1       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       34      34      4       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       1       0       1       0       0       0       0
       0       0       1       0       0       1       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       1       0       1       0       0       0       
0       0       0       1       0       0       1       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       36      36      5       0  
     0       0       0       0       0       0       1       0       0     
  0       0       0       0       0       1       0       0       0       0
       0       1       1       0       0       0       1       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       1       0       0    
   0       0       0       0       0       1       0       0       0       
0       0       1       1       0       0       0       1       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       38      38      12      0  
     0       0       0       0       0       0       0       0       1     
  1       1       0       1       1       2       1       0       0       0
       0       0       0       1       1       0       0       0       2   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       1    
   1       1       0       1       1       2       1       0       0       
0       0       0       0       1       1       0       0       0       2  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       40      40      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       1       0       0       0       0       0       0
       0       1       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       1       0       0       0       0       0       
0       0       1       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2012    1       7       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       1       0       0       0       0       0       0     
2013    1       7       0       2       1       24      24      1       0  
     0       0       1       0       0       0       0       0       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       1       0       0       0       0       0       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       7       0       2       1       30      30      2       0  
     0       0       0       0       0       0       0       1       0     
  0       0       0       0       0       0       0       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       1       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       0       0       0       0       0       0       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       1       0     
2013    1       7       0       2       1       32      32      3       0  
     0       0       0       0       0       0       0       1       0     
  0       1       0       0       0       0       0       0       0       0
       0       0       0       1       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       1       0    
   0       1       0       0       0       0       0       0       0       
0       0       0       0       1       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       7       0       2       1       34      34      20      0  
     0       0       0       0       0       2       2       0       0     
  0       2       0       2       0       2       0       1       3       0
       1       0       0       1       1       1       0       0       0   
    1       0       1       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       2       2       0       0    
   0       2       0       2       0       2       0       1       3       
0       1       0       0       1       1       1       0       0       0  
     1       0       1       0       0       0       0       0       0     
2013    1       7       0       2       1       36      36      23      0  
     0       0       0       0       0       0       0       0       0     
  1       1       1       2       3       1       1       0       2       1
       1       2       2       1       0       0       2       0       0   
    1       0       0       0       1       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   1       1       1       2       3       1       1       0       2       
1       1       2       2       1       0       0       2       0       0  
     1       0       0       0       1       0       0       0       0     
2013    1       7       0       2       1       38      38      13      0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       3       0       1       1       1       0
       0       1       0       0       0       1       0       0       0   
    1       0       0       1       0       0       0       1       0      
 0       0       1       0       0       0       1       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       3       0       1       1       1       
0       0       1       0       0       0       1       0       0       0  
     1       0       0       1       0       0       0       1       0     
2013    1       7       0       2       1       40      40      2       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       1       0       0       0       0       0       0
       0       0       1       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       1       0       0       0       0       0       
0       0       0       1       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     
2013    1       7       0       2       1       42      42      1       0  
     0       0       0       0       0       0       0       0       0     
  0       0       0       0       0       0       1       0       0       0
       0       0       0       0       0       0       0       0       0   
    0       0       0       0       0       0       0       0       0      
 0       0       0       0       0       0       0       0       0       0 
      0       0       0       0       0       0       0       0       0    
   0       0       0       0       0       0       1       0       0       
0       0       0       0       0       0       0       0       0       0  
     0       0       0       0       0       0       0       0       0     

0 #_N_MeanSize-at-Age_obs
#Yr Seas Flt/Svy Gender Part Ageerr Ignore datavector(female-male)
#                                          samplesize(female-male)
# 1971 1 1 3 0 1 2 29.8931 40.6872 44.7411 50.027 52.5794 56.1489 57.1033 6
# 1.1728 61.7417 63.368 64.4088 65.6889 67.616 68.5972 69.9177 71.0443 72.3
# 609 32.8188 39.5964 43.988 50.1693 53.1729 54.9822 55.3463 60.3509 60.743
# 9 62.3432 64.3224 65.1032 64.1965 66.7452 67.5154 70.8749 71.2768 20 20 2
# 0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
#  20 20 20 20 20 20 20

0 #_N_environ_variables
0 #_N_environ_obs
0 # N sizefreq methods to read

0 # no tag data

0 # no morphcomp data

999
