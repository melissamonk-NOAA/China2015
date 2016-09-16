### notes on a subset of senstivities conducted between pre-STAR draft doc and review
### started 6/24/15

stop("\n  This file should not be sourced!") # note to stop Ian from accidental sourcing

# paths on Ian's computers (other folks can add their own statements)
if (system("hostname", intern=TRUE) %in% c("NWCDW01724920","NWCLW01724829") ){
  dir.mods <- 'c:/SS/China/models' # could be moved to github if we wish
  dir.plots <- 'c:/SS/China/plots'  # could be moved to github if we wish
}

# read base model from each area
dir.S.base <- file.path(dir.mods, 'China_South_2015-06-15_EJ_v01_PRE-STAR_BASE')
dir.C.base <- file.path(dir.mods, 'China_Central_PRE-STAR_BASE_candidate2')
dir.N.base <- file.path(dir.mods, 'China_North_PRE-STAR_BASE_candidate1')
out.S <- SS_output(dir.S.base)
out.C <- SS_output(dir.C.base)
out.N <- SS_output(dir.N.base)

# create new folder to contain all profiles
dir.sens <- file.path(dir.mods, "sensitivities") 
dir.create(dir.sens)

####################################################################################
# function to copy input files
####################################################################################
copy.SS.files <- function(mod="X", target=NULL,
                          SSsource='c:/ss/SSv3.24U_Aug29/Win64/SS3safe_Win64.exe',
                          control.for.profile=FALSE, overwrite=FALSE){
  if(!mod %in% c("S","C","N")){
    stop('input "mod" should be "S","C", or "N"')
  }
  dir.base <- get(paste0("dir.",mod,".base"))
  output <- get(paste0("out.",mod))
  start <- SS_readstarter(file.path(dir.base, "starter.ss"))
  if(is.na(file.info(target)$isdir) || !file.info(target)$isdir){
    dir.create(target)
  }
  file.copy(from=file.path(dir.base, "forecast.ss"),
            to=file.path(target, "forecast.ss"), overwrite=overwrite)
  file.copy(from=file.path(dir.base, start$ctlfile),
            to=file.path(target, start$ctlfile), overwrite=overwrite)
  file.copy(from=file.path(dir.base, 'control.ss_new'),
            to=file.path(target, 'control.ss_new'), overwrite=overwrite)
  file.copy(from=file.path(dir.base, start$datfile),
            to=file.path(target, start$datfile), overwrite=overwrite)
  file.copy(from=SSsource,
            to=file.path(target, "SS3.exe"), overwrite=overwrite)
  if(control.for.profile){
    start$ctlfile <- "control_modified.ss"
    # make sure the prior likelihood is calculated
    # for non-estimated quantities
    start$prior_like <- 1
    # write modified starter file
    SS_writestarter(start, dir=target, overwrite=overwrite)
  }else{
    file.copy(from=file.path(dir.base, "starter.ss"),
              to=file.path(target, "starter.ss"), overwrite=overwrite)
  }
}
#### adding forgotten comps from California (North of 40-10) to central model
dir.C.comps <- file.path(dir.mods, 'China_Central_add_CA_comps')
out.C.comps <- SS_output(dir.C.comps, covar=FALSE)
SS_plots(out.C.comps, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

# shorter version of central model fleet names to fit in multi-fleet plot
C.fleetnames.short <- c("1_CA_North_Comm_Dead" ,  "2_CA_North_Comm_Live",
                        "3_CA_North_Rec_PC"    ,  "4_CA_North_Rec_PR",
                        "5_OR_South_Comm_Dead"  ,  "6_OR_South_Comm_Live",
                        "7_OR_South_Rec_PC"     ,  "8_OR_South_Rec_PR",
                        "9_OR_North_Comm"       ,  "10_OR_North_Rec_PC",
                        "11_OR_North_Rec_PR"    ,  "12_OR_South_Rec_PC_ORBS")
SS_plots(out.C.comps, fleetnames=C.fleetnames.short, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
# central model multi-fleet length data bubble plot in custom size
SSplotComps(out.C.comps, fleetnames=C.fleetnames.short, pheight=8,
            bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.comps, 'plots'))
# central model multi-fleet length residual bubble plot in custom size
SSplotComps(out.C.comps, fleetnames=C.fleetnames.short, pheight=8,
            bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.comps, 'plots'))



############# estimating M & h
out.C.m.and.h <- SS_output(file.path(dir.mods,
                                     'China_Central_PRE-STAR_BASE_candidate2_est.M_est.h'),
                           covar=FALSE)

############# recdevs
out.C.devs0.2 <- SS_output(file.path(dir.mods,
                                     'China_Central_PRE-STAR_BASE_recdevs0.2'),
                           covar=FALSE)
out.C.devs0.4 <- SS_output(file.path(dir.mods,
                                     'China_Central_PRE-STAR_BASE_recdevs0.4'),
                           covar=FALSE)
out.C.devs0.6 <- SS_output(file.path(dir.mods,
                                     'China_Central_PRE-STAR_BASE_recdevs0.6'),
                           covar=FALSE)

out.C.devs0.6$recruit[out.C.devs0.6$recruit$pred_recr>30,]
##      year spawn_bio exp_recr with_env adjusted pred_recr      dev  biasadj  era
## 3479 1982   106.755  20.2027  20.2027  16.8747  375.3010 3.101910 1.000000 Main
## 3484 1987    93.989  19.9752  19.9752  16.6847  146.7480 2.174220 1.000000 Main
## 3490 1993   132.937  20.5422  20.5422  17.1583  127.1190 2.002650 1.000000 Main
## 3496 1999   130.193  20.5126  20.5126  17.1335   33.0043 0.655599 1.000000 Main
## 3499 2002   111.667  20.2776  20.2776  17.1564   39.7140 0.839331 0.928571 Main

SSplotComparisons(SSsummarize(list(out.C, out.C.devs0.2, out.C.devs0.4, out.C.devs0.6)),
                  legendlabels=c("Pre-STAR base (no recdevs)", "sigmaR=0.2", "sigmaR=0.4", "sigmaR=0.6"),
                  png=TRUE, plotdir=file.path(dir.sens,"recdev_plots"),legendloc='topleft',
                  filenameprefix="sens.C_recevs_")
for(i in unique(out.C$cpue$Fleet)){
  SSplotComparisons(SSsummarize(list(out.C, out.C.devs0.2, out.C.devs0.4, out.C.devs0.6)),
                    subplot=11, indexfleets=rep(i,4), indexUncertainty=TRUE,
                    legendlabels=c("Pre-STAR base (no recdevs)", "sigmaR=0.2", "sigmaR=0.4", "sigmaR=0.6"),
                    png=TRUE, plotdir=file.path(dir.sens,"recdev_plots"),legendloc='topleft',
                    filenameprefix="sens.C_recevs_")
}

# get reasonably estimated values
dir.C.comps_selex <- file.path(dir.mods, 'China_Central_add_CA_comps_selex')
out.C.comps_selex <- SS_output(dir.C.comps_selex, covar=FALSE)
max_sel_vals <- out.C.comps_selex$estimated_non_rec_devparameters$Value[out.C.comps_selex$estimated_non_rec_devparameters$Max==45]
print(max_sel_vals[max_sel_vals < 44])
## [1] 37.3164 34.4701 41.7077
max_sel_mean <- mean(max_sel_vals[max_sel_vals < 44])
max_sel_sd <- sd(max_sel_vals[max_sel_vals < 44])
x <- seq(18,46,.1)
plot(x, dnorm(x, mean=max_sel_mean, sd=max_sel_sd))
max_sel_mean
## [1] 37.8314
max_sel_sd
## [1] 3.64618

# logistic
dir.C.comps_selex_logistic <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_logistic')
out.C.comps_selex_logistic <- SS_output(dir.C.comps_selex_logistic, covar=FALSE)
inflection_sel_vals <- out.C.comps_selex_logistic$estimated_non_rec_devparameters$Value[out.C.comps_selex_logistic$estimated_non_rec_devparameters$Max==40]
print(inflection_sel_vals[inflection_sel_vals < 35])
inflection_sel_mean <- mean(inflection_sel_vals[inflection_sel_vals < 35])
inflection_sel_sd <- sd(inflection_sel_vals[inflection_sel_vals < 35])
x <- seq(18,46,.1)
plot(x, dnorm(x, mean=inflection_sel_mean, sd=inflection_sel_sd))
inflection_sel_mean
## [1] 32.80033
inflection_sel_sd
## [1] 1.176266

### modified function to get modes of aggregated observations
## SSplotComps(out.C.comps, subplot=21, datonly=TRUE)
##   bin f sex    N     effN       obs       exp
## 8  32 1   0 16.8 153.7712 0.2087743 0.1604516
##    bin f sex    N     effN       obs       exp
## 24  34 2   0 17.8 322.2873 0.2455631 0.2208687
##    bin f sex    N     effN      obs       exp
## 39  34 3   0 23.3 93.65572 0.223078 0.2556661
##    bin f sex    N     effN       obs       exp
## 55  36 4   0 85.7 634.2098 0.2136097 0.2205043
##    bin f sex       N     effN       obs       exp
## 69  34 5   0 156.618 765.3076 0.2511673 0.2423377
##    bin f sex      N     effN       obs       exp
## 84  34 6   0 275.67 1000.697 0.2775807 0.2222075
##     bin f sex       N     effN       obs       exp
## 100  36 7   0 150.828 728.7298 0.2594031 0.2226284
##     bin f sex       N    effN       obs       exp
## 115  36 8   0 138.958 734.128 0.2451564 0.2191871
##     bin  f sex       N     effN       obs       exp
## 130  36 10   0 354.586 1022.949 0.2514669 0.1804507
##     bin  f sex       N     effN       obs       exp
## 145  36 11   0 139.551 396.6584 0.2833205 0.1790281
## > (32+34+34+36+34+34+36+36+36+36)/10
## [1] 34.8
modes <- c(32,34,34,36,34,34,36,36,36,36)
mean(modes)
## [1] 34.8
sd(modes)
## [1] 1.398412

dir.C.comps_1selex <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex')
out.C.comps_1selex <- SS_output(dir.C.comps_1selex, covar=FALSE)
SS_plots(out.C.comps_1selex, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

# request 6, estimate M and look at residuals
dir.C.comps_1selex_estM <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex_estM')
out.C.comps_1selex_estM <- SS_output(dir.C.comps_1selex_estM, covar=FALSE)
SS_plots(out.C.comps_1selex_estM, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


dir.C.comps_selex_prior <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_prior')
out.C.comps_selex_prior <- SS_output(dir.C.comps_selex_prior, covar=FALSE)
SS_plots(out.C.comps_selex_prior, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_selex_prior2 <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_prior2')
out.C.comps_selex_prior2 <- SS_output(dir.C.comps_selex_prior2, covar=FALSE)
SS_plots(out.C.comps_selex_prior2, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_selex_logistic_prior <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_logistic_prior')
out.C.comps_selex_logistic_prior <- SS_output(dir.C.comps_selex_logistic_prior, covar=FALSE)

# image of priors
png(file.path(dir.sens, 'selectivity_peak_priors_Central.png'),
    width=6.5, height=5, res=300, units='in')
par(mfrow=c(2,1), mar=c(2,1,2,1),oma=c(2,2,0,0))
SSplotPars(dir=dir.C.comps_selex_prior, showpost=FALSE,
           newheaders="Prior based on reasonably estimated values",
           showinit=FALSE,
           showmle=FALSE,
           showlegend=FALSE,
           strings="SizeSel_1P_1", nrows=2, ncols=1, new=FALSE)
SSplotPars(dir=dir.C.comps_selex_prior2, showpost=FALSE,
           newheaders="Prior based on modes of observed lengths",
           showinit=FALSE,
           showmle=FALSE,
           showlegend=FALSE,
           strings="SizeSel_1P_1", nrows=2, ncols=1, new=FALSE)
dev.off()

# image of priors
png(file.path(dir.sens, 'selectivity_peak_priors2_Central.png'),
    width=6.5, height=3, res=300, units='in')
par(mfrow=c(1,1), mar=c(2,1,2,1),oma=c(2,2,0,0))
SSplotPars(dir=dir.C.comps_selex_logistic_prior, showpost=FALSE,
           newheaders="Logistic inflection prior based on reasonably estimated values",
           showinit=FALSE,
           showmle=FALSE,
           showlegend=FALSE,
           strings="SizeSel_1P_1", nrows=1, ncols=1, new=FALSE)
dev.off()

SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.comps_selex_prior,
                                   out.C.comps_selex_prior2,
                                   out.C.comps_selex_logistic_prior)),
                  subplot=c(1,3),
                  legendlabels=c("Pre-STAR base",
                      "Selectivity peak prior based on estimated values",
                      "Selectivity peak prior based on length modes",
                      "Logistic inflection prior based on estimated values"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_selex_priors_")
mods <- list(out.C.comps_selex,
             out.C.comps_selex_prior,
             out.C.comps_selex_prior2,
             out.C.comps_selex_logistic,
             out.C.comps_selex_logistic_prior)
for(i in 1:length(mods)){
  SS_plots(mods[[i]], plot=c(2), fleetnames=C.fleetnames.short, printfolder='sel',
           uncertainty=FALSE)
}

# Francis weighting of conditional age-at-length comps
dir.C.comps_tune_ages <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_ages')
out.C.comps_tune_ages <- SS_output(dir.C.comps_tune_ages, covar=FALSE)
SS_plots(out.C.comps_tune_ages, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.comps_tune,
                                   out.C.comps_tune_ages)),
                  subplot=c(1,3),
                  legendlabels=c("Pre-STAR base",
                      "Add CA lengths + tune lengths",
                      "Add CA lengths + tune lengths & ages"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_comps_tuning_")

dir.C.comps_tune_ages_estM <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_ages_estM')
out.C.comps_tune_ages_estM <- SS_output(dir.C.comps_tune_ages_estM, covar=FALSE)
SS_plots(out.C.comps_tune_ages_estM, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_M_0.087 <- file.path(dir.mods, 'China_Central_add_CA_comps_M_0.087')
out.C.comps_M_0.087 <- SS_output(dir.C.comps_M_0.087, covar=FALSE)
SS_plots(out.C.comps_M_0.087, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_tune_ages_M_0.07 <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_ages_M_0.07')
out.C.comps_tune_ages_M_0.07 <- SS_output(dir.C.comps_tune_ages_M_0.07, covar=FALSE)
SS_plots(out.C.comps_tune_ages_M_0.07, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.comps_tune,
                                   out.C.comps_tune_ages,
                                   out.C.comps_M_0.087,
                                   out.C.comps_tune_ages_M_0.07)),
                  subplot=c(1,3),
                  legendlabels=c("Pre-STAR base",
                      "Add CA lengths + tune lengths",
                      "Add CA lengths + tune lengths & ages",
                      "Add CA lengths + M=0.087",
                      "Add CA lengths + tune lengths & ages M=0.07"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_comps_M_")


dir.C.comps_tune_ages_Effn <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_age_Effn')
out.C.comps_tune_ages_Effn <- SS_output(dir.C.comps_tune_ages_Effn, covar=FALSE)
dir.C.comps_tune_ages_Effn_nosoft <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_age_Effn_nosoft')
out.C.comps_tune_ages_Effn_nosoft <- SS_output(dir.C.comps_tune_ages_Effn, covar=FALSE)
dir.C.comps_tune_ages_Effn_fix_sel <- file.path(dir.mods, 'China_Central_add_CA_comps_tune_age_Effn_fix_sel')
out.C.comps_tune_ages_Effn_fix_sel <- SS_output(dir.C.comps_tune_ages_Effn_fix_sel, covar=FALSE)

SS_plots(out.C.comps_tune_ages_Effn_fix_sel, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
# fix M at 0.07
dir.C.STAR_M_0.07 <- file.path(dir.mods, 'China_Central_STAR_M_0.07')
out.C.STAR_M_0.07 <- SS_output(dir.C.STAR_M_0.07, covar=FALSE)

SS_plots(out.C.STAR_M_0.07, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


# fix M at 0.07 and retune
dir.C.STAR_M_0.07_tune <- file.path(dir.mods, 'China_Central_STAR_M_0.07_tune')
out.C.STAR_M_0.07_tune <- SS_output(dir.C.STAR_M_0.07_tune, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

# estimate M (gets big)
dir.C.STAR_estM <- file.path(dir.mods, 'China_Central_STAR_estM')
out.C.STAR_estM <- SS_output(dir.C.STAR_estM, covar=FALSE)

SS_plots(out.C.STAR_estM, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

# fix M and free selex
# fix M at 0.07 and retune
dir.C.STAR_M_0.07_tune_free_selex <-
  file.path(dir.mods, 'China_Central_STAR_M_0.07_tune_free_selex')
out.C.STAR_M_0.07_tune_free_selex <-
  SS_output(dir.C.STAR_M_0.07_tune_free_selex, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune_free_selex, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


# aggregated fleets, fix M at 0.07 no tuning
dir.C.agg <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated')
out.C.agg <- SS_output(dir.C.agg, covar=FALSE)
SS_plots(out.C.agg, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.agg_tune <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated_tune')
out.C.agg_tune <- SS_output(dir.C.agg_tune, covar=FALSE)
SS_plots(out.C.agg_tune, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.agg_agesel <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated_agesel')
out.C.agg_agesel <- SS_output(dir.C.agg_agesel, covar=FALSE)
SS_plots(out.C.agg_agesel, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.agg_tune_sel <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated_tune_sel')
out.C.agg_tune_sel <- SS_output(dir.C.agg_tune_sel, covar=FALSE)
SS_plots(out.C.agg_tune_sel, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


# add age-based selectivity to un-aggregated model
dir.C.STAR_M_0.07_tune_agesel <-
  file.path(dir.mods, 'China_Central_STAR_M_0.07_tune_agesel')
out.C.STAR_M_0.07_tune_agesel <-
  SS_output(dir.C.STAR_M_0.07_tune_agesel, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune_agesel, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

# add shared age-based selectivity to un-aggregated model
dir.C.STAR_M_0.07_tune_1agesel <-
  file.path(dir.mods, 'China_Central_STAR_M_0.07_tune_1agesel')
out.C.STAR_M_0.07_tune_1agesel <-
  SS_output(dir.C.STAR_M_0.07_tune_1agesel, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune_1agesel, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


# add logistic age-based selectivity to un-aggregated model
dir.C.STAR_M_0.07_tune_agesel_logistic <-
  file.path(dir.mods, 'China_Central_STAR_M_0.07_tune_agesel_logistic')
out.C.STAR_M_0.07_tune_agesel_logistic <-
  SS_output(dir.C.STAR_M_0.07_tune_agesel_logistic, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune_agesel_logistic, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


dir.C.agg_tune_fix_sel <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated_tune_fix_sel')
out.C.agg_tune_fix_sel <- SS_output(dir.C.agg_tune_fix_sel, covar=FALSE)
SS_plots(out.C.agg_tune_fix_sel, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.STAR_M_0.07_tune_fix_high_sel <-
  file.path(dir.mods, 'China_Central_STAR_M_0.07_tune_fix_high_sel')
out.C.STAR_M_0.07_tune_fix_high_sel <-
  SS_output(dir.C.STAR_M_0.07_tune_fix_high_sel, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_tune_fix_high_sel, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

#
dir.C.agg_tune_fix_high_sel <- file.path(dir.mods, 'China_Central_STAR_M_0.07_aggregated_tune_fix_high_sel')
out.C.agg_tune_fix_high_sel <- SS_output(dir.C.agg_tune_fix_high_sel, covar=FALSE)
SS_plots(out.C.agg_tune_fix_high_sel, #fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)



dir.C.STAR_M_0.07_catch_sens <-
  file.path(dir.mods, 'China_Central_STAR_July9_catch_sensitivity')
out.C.STAR_M_0.07_catch_sens <-
  SS_output(dir.C.STAR_M_0.07_catch_sens, covar=FALSE)

SS_plots(out.C.STAR_M_0.07_catch_sens, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


bc1 <- SS_output(file.path(dir.mods,
                           'China_Central_STAR_July9_BASE_CANDIDATE_M_0.07_tune_fix_high_sel'),
                 covar=FALSE)

sum1 <- SSsummarize(list(out.C,
                         out.C.comps_tune,
                         out.C.STAR_M_0.07_tune,
                         bc1))
SSplotComparisons(sum1,
                  subplot=c(1),
                  legendlabels=c("Pre-STAR base",
                      "correct data",
                      "tune ages by effective N, M=0.07",
                      "also fix selectivity"),
png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
filenameprefix="sens.C_comps_July9_")

SSplotComparisons(sum1,
                  subplot=c(3),
                  legendlabels=c("Pre-STAR base",
                      "correct data",
                      "tune ages by effective N, M=0.07",
                      "also fix selectivity"),
png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
filenameprefix="sens.C_comps_July9_")

# summary biomass
mods <- list(out.C,
             out.C.comps_tune,
             out.C.STAR_M_0.07_tune_free_selex,
             out.C.STAR_M_0.07_tune,
             bc1)
sum1 <- SSsummarize(mods)
sum2 <- sum1
for(i in 1:5){
  sum2$SpawnBio[,i] <- mods[[i]]$timeseries$Bio_smry
}


SSplotComparisons(sum2,
                  labels = c("Year", "Age 5+ biomass (t)", "Relative spawning biomass", 
                      "Age-0 recruits (1,000s)", "Recruitment deviations", 
                      "Index", "Log index", "SPR ratio", "Density", "Management target", 
                      "Minimum stock size threshold", "Age 5+ biomass (t)", "Harvest rate"),
                  subplot=c(1,3),
                  legendlabels=c("Pre-STAR base",
                      "correct data",
                      "tune ages by effective N, M=0.07, max sel = 45",
                      "tune ages by effective N, M=0.07, max sel = 34.7",
                      "tune ages by effective N, M=0.07, max sel = 39.9"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_comps_July9_SMRY")




# summary biomass
mods <- list(bc1, out.C.agg_tune_fix_high_sel)
sum1 <- SSsummarize(mods)
sum2 <- sum1
for(i in 1:2){
  sum2$SpawnBio[,i] <- mods[[i]]$timeseries$Bio_smry
}


SSplotComparisons(sum2,
                  labels = c("Year", "Age 5+ biomass (t)", "Relative spawning biomass", 
                      "Age-0 recruits (1,000s)", "Recruitment deviations", 
                      "Index", "Log index", "SPR ratio", "Density", "Management target", 
                      "Minimum stock size threshold", "Age 5+ biomass (t)", "Harvest rate"),
                  subplot=c(1,3),
                  legendlabels=c("tune ages by effective N, M=0.07, max sel = 39.9",
                                 "also aggregate from 11 fishing fleets to 5"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_comps_July9_Aggregate")



# summary biomass
mods <- list(bc1, out.C.STAR_M_0.07_catch_sens)
sum1 <- SSsummarize(mods)
sum2 <- sum1
for(i in 1:2){
  sum2$SpawnBio[,i] <- mods[[i]]$timeseries$Bio_smry
}


SSplotComparisons(sum2,
                  labels = c("Year", "Age 5+ biomass (t)", "Relative spawning biomass", 
                      "Age-0 recruits (1,000s)", "Recruitment deviations", 
                      "Index", "Log index", "SPR ratio", "Density", "Management target", 
                      "Minimum stock size threshold", "Age 5+ biomass (t)", "Harvest rate"),
                  subplot=c(1,3),
                  legendlabels=c("tune ages by effective N, M=0.07, max sel = 39.9",
                                 "also aggregate from 11 fishing fleets to 5"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="sens.C_comps_July9_catch_sensitivity")


base <- SS_output('c:/SS/China/models/China_Central__GOOD_BASE/', covar=FALSE)
base_lo <- SS_output('c:/SS/China/models/China_Central__GOOD_BASE_low/', covar=FALSE)
base_hi <- SS_output('c:/SS/China/models/China_Central__GOOD_BASE_high/', covar=FALSE)

sum1 <- SSsummarize(list(base, base_hi, base_lo))

SSplotComparisons(sum1,
                  labels = c("Year", "Age 5+ biomass (t)", "Relative spawning biomass", 
                      "Age-0 recruits (1,000s)", "Recruitment deviations", 
                      "Index", "Log index", "SPR ratio", "Density", "Management target", 
                      "Minimum stock size threshold", "Age 5+ biomass (t)", "Harvest rate"),
                  legendlabels=c("Base model",
                      "Low state of nature",
                      "High state of nature"),
pheight=6.5,                  
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="base.C_July9_ht6.5")

request22 <- SS_output('c:/SS/China/models/China_Central_BASE_request22/', covar=FALSE)
request22_estM <- SS_output('c:/SS/China/models/China_Central_BASE_request22_estM/', covar=FALSE)
SS_plots(request22, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
SS_plots(request22_estM, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
SS_plots(base, fleetnames=C.fleetnames.short,
         datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


sum22 <- SSsummarize(list(base, request22, request22_estM))

SSplotComparisons(sum22,
                  labels = c("Year", "Age 5+ biomass (t)", "Relative spawning biomass", 
                      "Age-0 recruits (1,000s)", "Recruitment deviations", 
                      "Index", "Log index", "SPR ratio", "Density", "Management target", 
                      "Minimum stock size threshold", "Age 5+ biomass (t)", "Harvest rate"),
                  legendlabels=c("Base model",
                      "Marginal ages, M=0.07",
                      "Marginal ages, estimate M=0.113"),
                  png=TRUE, plotdir=dir.sens, legendloc='bottomleft',
                  filenameprefix="base.C_July9_request22")
