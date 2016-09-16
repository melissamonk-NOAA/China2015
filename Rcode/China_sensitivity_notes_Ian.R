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

####################################################################################
# catch ramp for WA
####################################################################################
dir.sens.catch.N <- file.path(dir.sens, "catch.N")
copy.SS.files(mod="N", target=dir.sens.catch.N,
              control.for.profile=FALSE, overwrite=FALSE)
dat.N <- SS_readdat(file.path(dir.N.base, 'china_WAonly_data.ss'))
dat.N2 <- dat.N
# 1967 is first year with positive catch
head(dat.N$catch[apply(dat.N$catch[,1:dat.N$Nfleet],1,sum)>0,])
##    1_WA_SouthernWA_Rec_PCPR 2_WA_NorthernWA_Rec_PC 3_WA_NorthernWA_Rec_PR year
## 68                     0.00                   0.27                   1.04 1967
## 69                     0.02                   0.32                   1.25 1968
for(ifleet in 2:3){
  target <- dat.N2$catch[dat.N2$catch$year %in% 1967, ifleet]
  dat.N2$catch[dat.N2$catch$year %in% 1945:1967, ifleet] <-
    round(seq(0, target, length=length(1945:1967)),2)
}
SS_writedat(datlist=dat.N2, outfile=file.path(dir.sens.catch.N, 'china_WAonly_data.ss'),
            overwrite=TRUE)
out.N.sens.catch <- SS_output(dir.sens.catch.N)
SSplotComparisons(SSsummarize(list(out.N, out.N.sens.catch)),
                  legendlabels=c("Base model", "Added catch ramp from 1945 to 1967"))


####################################################################################
# Change size at age 0 to 4cm
####################################################################################
dir.sens.age0.N <- file.path(dir.sens, "age0.N")
copy.SS.files(mod="N", target=dir.sens.age0.N,
              control.for.profile=FALSE, overwrite=TRUE)
SS_changepars(dir=dir.sens.age0.N,
              ctlfile='China_WAonly_control.ss',
              newctlfile='China_WAonly_control.ss',
              strings='L_at_Amin_Fem', newvals=4)

dir.sens.age0.C <- file.path(dir.sens, "age0.C")
copy.SS.files(mod="C", target=dir.sens.age0.C,
              control.for.profile=FALSE, overwrite=TRUE)
SS_changepars(dir=dir.sens.age0.C,
              ctlfile='China_central_control.ss',
              newctlfile='China_central_control.ss',
              strings='L_at_Amin_Fem', newvals=4)


####################################################################################
# Change weight-specific fecundity
####################################################################################
dir.sens.fec.N <- file.path(dir.sens, "fec.N")
copy.SS.files(mod="N", target=dir.sens.fec.N,
              control.for.profile=FALSE, overwrite=TRUE)
SS_changepars(dir=dir.sens.fec.N,
              ctlfile='China_WAonly_control.ss',
              newctlfile='China_WAonly_control.ss',
              strings=c('Eggs/kg_inter_Fem','Eggs/kg_slope_wt_Fem'),
              newvals=c(0.196, 0.0571))

dir.sens.fec.C <- file.path(dir.sens, "fec.C")
copy.SS.files(mod="C", target=dir.sens.fec.C,
              control.for.profile=FALSE, overwrite=TRUE)
SS_changepars(dir=dir.sens.fec.C,
              ctlfile='China_central_control.ss',
              newctlfile='China_central_control.ss',
              strings=c('Eggs/kg_inter_Fem','Eggs/kg_slope_wt_Fem'),
              newvals=c(0.196, 0.0571))

####################################################################################
# Drop MRFSS index from central model
####################################################################################
dir.sens.noMRFSS.C <- file.path(dir.sens, "noMRFSS.C")
dir.sens.noMRFSS_fixQ.C <- file.path(dir.sens, "noMRFSS_fixQ.C")
copy.SS.files(mod="C", target=dir.sens.noMRFSS.C,
              control.for.profile=FALSE, overwrite=TRUE)
# NOTE: then manually change fleet number from 7 to -7 in index input of data file
#       and change Q_setup and parameter lines below
#       to eliminate "extra sd index for fleet 7"
# EXTRA: "fixQ" model has Q parameter added and fixed at -7.606818 = log(0.000497051)
#        where 0.000497051 is the Q from the base model for this fleet


####################################################################################
# Read output and plot comparisons
####################################################################################

out.N.sens.catch <- SS_output(dir.sens.catch.N)
out.N.sens.age0 <- SS_output(dir.sens.age0.N, covar=FALSE)
out.N.sens.fec <- SS_output(dir.sens.fec.N, covar=FALSE)
SSplotComparisons(SSsummarize(list(out.N, 
                                   out.N.sens.age0,
                                   out.N.sens.fec,
                                   out.N.sens.catch)),
                  subplot=3, # only plot depletion for this sensitivity
                  legendlabels=c("Base model",
                      "Increase size at age 0",
                      "Weight-specific fecundity",
                      "Added catch ramp from 1945 to 1967"),
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.N_")
SSplotComparisons(SSsummarize(list(out.N, 
                                   out.N.sens.age0,
                                   out.N.sens.catch)),
                  subplot=1, # only plot depletion for this sensitivity
                  legendlabels=c("Base model",
                      "Increase size at age 0",
                      "Added catch ramp from 1945 to 1967"),
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.N_")

out.C.sens.age0 <- SS_output(dir.sens.age0.C, covar=FALSE)
out.C.sens.fec <- SS_output(dir.sens.fec.C, covar=FALSE)
out.C.sens.noMRFSS <- SS_output(dir.sens.noMRFSS.C, covar=FALSE)
out.C.sens.noMRFSS_fixQ <- SS_output(dir.sens.noMRFSS_fixQ.C, covar=FALSE)
SSplotComparisons(SSsummarize(list(out.C, 
                                   out.C.sens.age0,
                                   out.C.sens.fec,
                                   out.C.sens.noMRFSS)),
                  subplot=3, # only plot depletion for this sensitivity
                  legendlabels=c("Base model", 
                      "Increase size at age 0",
                      "Weight-specific fecundity",
                      "Remove MRFSS index"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.C_")

tmp <- SSsummarize(list(out.C, 
                        out.C.sens.noMRFSS,
                        out.C.sens.noMRFSS_fixQ))
SSplotComparisons(tmp,
                  models=c(1,3), # no expected values for model 2 with internal Q 
                  subplot=11, # only plot index fits for this sensitivity
                  legendlabels=c("Base model", 
                      "Remove MRFSS index"),
                  legendloc='bottomright',
                  indexUncertainty=TRUE,
                  indexfleets=7,
                  indexQlabel=FALSE,
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.C_")




####################################################################################
# Fix growth, set lambdas for age and length comps to 0
####################################################################################
dir.sens.indices_only.N <- file.path(dir.sens, "indices_only.N")
copy.SS.files(mod="N", target=dir.sens.indices_only.N,
              control.for.profile=FALSE, overwrite=TRUE)

dir.sens.indices_only.C <- file.path(dir.sens, "indices_only.C")
copy.SS.files(mod="C", target=dir.sens.indices_only.C,
              control.for.profile=FALSE, overwrite=TRUE)

dir.sens.indices_only.S <- file.path(dir.sens, "indices_only.S")
copy.SS.files(mod="S", target=dir.sens.indices_only.S,
              control.for.profile=FALSE, overwrite=TRUE)

# now fixing selectivity
dir.sens.indices_only_fix_selex.N <- file.path(dir.sens, "indices_only_fix_selex.N")
copy.SS.files(mod="N", target=dir.sens.indices_only_fix_selex.N,
              control.for.profile=FALSE, overwrite=TRUE)

dir.sens.indices_only_fix_selex.C <- file.path(dir.sens, "indices_only_fix_selex.C")
copy.SS.files(mod="C", target=dir.sens.indices_only_fix_selex.C,
              control.for.profile=FALSE, overwrite=TRUE)

dir.sens.indices_only_fix_selex.S <- file.path(dir.sens, "indices_only_fix_selex.S")
copy.SS.files(mod="S", target=dir.sens.indices_only_fix_selex.S,
              control.for.profile=FALSE, overwrite=TRUE)


# north model plot
out.N.index_only <- SS_output(dir.sens.indices_only.N, covar=FALSE)
SSplotComparisons(SSsummarize(list(out.N,
                                   out.N.index_only)),
                  subplot=c(1,3), # only plot depletion for this sensitivity
                  legendlabels=c("Base model", 
                      "No age or length comps, fixed growth at base parameters"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.N_index_only_")

# central model plot
out.C.index_only <- SS_output(file.path(dir.sens, 'indices_only.C/'), covar=FALSE)
SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.index_only)),
                  subplot=c(1,3), # only plot depletion for this sensitivity
                  legendlabels=c("Base model", 
                      "No age or length comps, fixed growth at base parameters"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.C_index_only_")

# central model plot fix selex
out.C.index_only_fix_selex <- SS_output(file.path(dir.sens, 'indices_only_fix_selex.C/'), covar=FALSE)
SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.index_only,
                                   out.C.index_only_fix_selex)),
                  subplot=c(1,3), # only plot depletion for this sensitivity
                  legendlabels=c("Base model",
                      "No age or length comps, fixed growth at base parameters",
                      "No age or length comps, fixed growth and selectivity at base parameters"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.C_index_only_3_models_")

out.C.index_only_fix_selex <- SS_output(file.path(dir.sens, 'indices_only_fix_selex.C/'), covar=FALSE)
SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.index_only_fix_selex)),
                  subplot=c(1,3), # only plot depletion for this sensitivity
                  legendlabels=c("Base model",
                      "No age or length comps, fixed growth and selectivity at base parameters"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.C_index_only_2_models_")


# south model plot
out.S.index_only <- SS_output(file.path(dir.sens, 'indices_only.S/'), covar=FALSE)
SSplotComparisons(SSsummarize(list(out.S,
                                   out.S.index_only)),
                  subplot=c(1,3), # only plot depletion for this sensitivity
                  legendlabels=c("Base model", 
                      "No age or length comps, fixed growth at base parameters"),
                  legendloc='bottomright',
                  png=TRUE, plotdir=dir.sens, filenameprefix="sens.S_index_only_")



#### morphs for central model
out.C.morphs <- SS_output(file.path(dir.sens, 'morphs.C'), covar=FALSE)
out.C.morphs2 <- SS_output(file.path(dir.sens, 'morphs2.C'), covar=FALSE)

#### adding forgotten comps from California (North of 40-10) to central model
dir.C.comps <- file.path(dir.mods, 'China_Central_add_CA_comps')
out.C.comps <- SS_output(dir.C.comps, covar=FALSE)
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
# central model multi-fleet length data bubble plot in custom size
SS_plots(out.C.comps, fleetnames=C.fleetnames.short, datplot=TRUE, uncertainty=FALSE,
         maxrows=4, maxcols=6, maxrows2=4, maxcols2=4, printfolder='plots4rows')
SSplotComps(out.C.comps, fleetnames=C.fleetnames.short, pheight=5,
            maxrows=4,bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.comps, 'plots4rows'))
# central model multi-fleet length residual bubble plot in custom size
SSplotComps(out.C.comps, fleetnames=C.fleetnames.short, pheight=5,
            maxrows=4,bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.comps, 'plots4rows'))

dir.C.comps_tune <- file.path(dir.mods, 'China_Central_add_CA_comps_tune')
out.C.comps_tune <- SS_output(dir.C.comps_tune, covar=FALSE)

dir.C.comps_selex <- file.path(dir.mods, 'China_Central_add_CA_comps_selex')
out.C.comps_selex <- SS_output(dir.C.comps_selex, covar=FALSE)
SS_plots(out.C.comps_selex, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_selex_bound <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_bound')
out.C.comps_selex_bound <- SS_output(dir.C.comps_selex_bound, covar=FALSE)
SS_plots(out.C.comps_selex_bound, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_1selex <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex')
out.C.comps_1selex <- SS_output(dir.C.comps_1selex, covar=FALSE)
SS_plots(out.C.comps_1selex, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_1selex_bound <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex_bound')
out.C.comps_1selex_bound <- SS_output(dir.C.comps_1selex_bound, covar=FALSE)
SS_plots(out.C.comps_1selex_bound, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_1selex_logistic <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex_logistic')
out.C.comps_1selex_logistic <- SS_output(dir.C.comps_1selex_logistic, covar=FALSE)
SS_plots(out.C.comps_1selex_logistic, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_1selex_spline <- file.path(dir.mods, 'China_Central_add_CA_comps_1selex_spline')
out.C.comps_1selex_spline <- SS_output(dir.C.comps_1selex_spline, covar=FALSE)
SS_plots(out.C.comps_1selex_spline, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_selex_spline <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_spline')
out.C.comps_selex_spline <- SS_output(dir.C.comps_selex_spline, covar=FALSE)
SS_plots(out.C.comps_selex_spline, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

dir.C.comps_selex_spline2 <- file.path(dir.mods, 'China_Central_add_CA_comps_selex_spline2')
out.C.comps_selex_spline2 <- SS_output(dir.C.comps_selex_spline2, covar=FALSE)
SS_plots(out.C.comps_selex_spline2, datplot=TRUE, uncertainty=FALSE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)



SSplotComparisons(SSsummarize(list(out.C,
                                   out.C.comps,
                                   out.C.comps_tune,
                                   out.C.comps_1selex,
                                   out.C.comps_1selex_bound,
                                   out.C.comps_selex_bound,
                                   out.C.comps_selex_spline2)),
                  legendlabels=c("Base model (7 selex pars)",
                      "Add CA lengths",
                      "Add CA lengths + retune",
                      "Add CA lengths + decrease to 2 selex pars, bound max at 45",
                      "Add CA lengths + decrease to 2 selex pars, bound max at 36",
                      "Add CA lengths + increase to 18 selex pars, bound max at 36",
                      "Add CA lengths + increase to 27 cubic spline selex pars"),
                  legendloc='bottomright',
                  subplot=c(1,3),
                  png=TRUE, plotdir=dir.sens,
                  filenameprefix="sens.C_comps3_")

mods <- list(out.C,
             out.C.comps,
             out.C.comps_tune,
             out.C.comps_selex,
             out.C.comps_selex_bound,
             out.C.comps_1selex,
             out.C.comps_1selex_bound,
             out.C.comps_selex_spline2)
for(i in 1:length(mods)){
  SS_plots(mods[[i]], plot=c(2,16), fleetnames=C.fleetnames.short, printfolder='sel',
           uncertainty=FALSE)
}


mods <- list(out.C.comps_1selex)
for(i in 1:length(mods)){
  SS_plots(mods[[i]], plot=c(2,16), fleetnames=C.fleetnames.short, printfolder='sel',
           uncertainty=FALSE)
}


