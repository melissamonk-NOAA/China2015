### notes on an attempt to build a 3-area model from separate pre-STAR base models
### started 6/26/15

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

dir.all <- file.path(dir.mods, "sensitivities/three-area") 
dir.create(dir.all)

dat.N <- SS_readdat(file.path(dir.N.base, 'data.ss_new'))
dat.C <- SS_readdat(file.path(dir.C.base, 'data.ss_new'))
dat.S <- SS_readdat(file.path(dir.S.base, 'data.ss_new'))

dat.all <- dat.S
nfleets.S <- length(dat.S$fleetnames)
nfleets.C <- length(dat.C$fleetnames)
nfleets.N <- length(dat.N$fleetnames)

# info on fleets
fleet.table <- data.frame(name.old=c(dat.S$fleetnames,
                              dat.C$fleetnames,
                              dat.N$fleetnames),
                          num.old=c(1:nfleets.S,
                              1:nfleets.C,
                              1:nfleets.N),
                          model=c(rep("S",nfleets.S),
                              rep("C",nfleets.C),
                              rep("N",nfleets.N)),
                          area=c(rep(1,nfleets.S),
                              rep(2,nfleets.C),
                              rep(3,nfleets.N)))
nfleets.all <- nrow(fleet.table)
fleet.table$num.new <- 1:nfleets.all
fleet.table$name.new <- paste0(fleet.table$model, fleet.table$name.old)

dat.all$fleetnames <- fleet.table$name.new
dat.all$areas <- fleet.table$area
dat.all$Nfleet <- nfleets.all
dat.all$Nsurveys <- 0
dat.all$N_areas <- 3
dat.all$surveytiming <- rep(0.5, nfleets.all)
dat.all$areas <- fleet.table$area
dat.all$fleetinfo1 <- data.frame(rbind(dat.all$surveytiming,
                                       dat.all$areas))
dat.all$fleetinfo1$input <- dat.S$fleetinfo1$input

dat.all$units_of_catch <- rep(1.0, nfleets.all)
dat.all$se_log_catch <- rep(0.1, nfleets.all)
dat.all$fleetinfo2 <- data.frame(rbind(dat.all$units_of_catch,
                                       dat.all$se_log_catch))
dat.all$fleetinfo2$input <- dat.S$fleetinfo2$input
dat.all$init_equil <- rep(0, nfleets.all)
# combine catches
dat.all$catch <- data.frame(dat.S$catch[,1:dat.S$Nfleet],
                            matrix(0, nrow=dat.S$N_catch, ncol=dat.S$Nsurveys),
                            dat.C$catch[,1:dat.C$Nfleet],
                            0, # only one survey in central model
                            dat.N$catch[,1:dat.N$Nfleet], # no surveys in northern model
                            dat.S$catch$year,
                            dat.S$catch$seas)
names(dat.all$catch) <- paste0("X",1:nfleets.all)

# sort out CPUE
dat.all$N_cpue <- sum(dat.S$N_cpue,
                      dat.C$N_cpue,
                      dat.N$N_cpue)
dat.all$CPUEinfo <- rbind(dat.S$CPUEinfo,
                          dat.C$CPUEinfo,
                          dat.N$CPUEinfo)
dat.all$CPUEinfo$Fleet <- 1:nfleets.all

# temporary copies of CPUE tables
dat.S_CPUE <- dat.S$CPUE
dat.C_CPUE <- dat.C$CPUE
dat.N_CPUE <- dat.N$CPUE
# renumber C and N areas (numbers for S are unchanged)
for(irow in 1:nrow(dat.C_CPUE)){
  dat.C_CPUE$index[irow] <-
    fleet.table$num.new[fleet.table$model=="C" &
                          fleet.table$num.old==dat.C$CPUE$index[irow]]
}
for(irow in 1:nrow(dat.N_CPUE)){
  dat.N_CPUE$index[irow] <-
    fleet.table$num.new[fleet.table$model=="N" &
                          fleet.table$num.old==dat.N$CPUE$index[irow]]
}
dat.all$CPUE <- rbind(dat.S_CPUE,
                      dat.C_CPUE,
                      dat.N_CPUE)
# discard fleet are only in south model and don't need change
# no meanbodywt
# bins don't change

# sort out length comps
dat.all$N_lencomp <- sum(dat.S$N_lencomp,
                         dat.C$N_lencomp,
                         dat.N$N_lencomp)
# temporary copies of lencomp tables
dat.S_lencomp <- dat.S$lencomp
dat.C_lencomp <- dat.C$lencomp
dat.N_lencomp <- dat.N$lencomp
# renumber C and N areas (numbers for S are unchanged)
for(irow in 1:nrow(dat.C_lencomp)){
  dat.C_lencomp$FltSvy[irow] <-
    fleet.table$num.new[fleet.table$model=="C" &
                          fleet.table$num.old==dat.C$lencomp$FltSvy[irow]]
}
for(irow in 1:nrow(dat.N_lencomp)){
  dat.N_lencomp$FltSvy[irow] <-
    fleet.table$num.new[fleet.table$model=="N" &
                          fleet.table$num.old==dat.N$lencomp$FltSvy[irow]]
}
dat.all$lencomp <- rbind(dat.S_lencomp,
                         dat.C_lencomp,
                         dat.N_lencomp)

# sort out age comps
dat.all$N_agecomp <- sum(dat.S$N_agecomp,
                         dat.C$N_agecomp,
                         dat.N$N_agecomp)
# temporary copies of agecomp tables
dat.S_agecomp <- dat.S$agecomp
dat.C_agecomp <- dat.C$agecomp
dat.N_agecomp <- dat.N$agecomp
# renumber C and N areas (numbers for S are unchanged)
# extra code required for negative fleet numbers for marginal (ghost) fleets
for(irow in 1:nrow(dat.C_agecomp)){
  dat.C_agecomp$FltSvy[irow] <-
    sign(dat.C$agecomp$FltSvy[irow]) *
      fleet.table$num.new[which(fleet.table$model=="C" &
                                  fleet.table$num.old==abs(dat.C$agecomp$FltSvy[irow]))]
}
for(irow in 1:nrow(dat.N_agecomp)){
  dat.N_agecomp$FltSvy[irow] <-
    sign(dat.N$agecomp$FltSvy[irow]) *
      fleet.table$num.new[which(fleet.table$model=="N" &
                                  fleet.table$num.old==abs(dat.N$agecomp$FltSvy[irow]))]
}
dat.all$agecomp <- rbind(dat.S_agecomp,
                         dat.C_agecomp,
                         dat.N_agecomp)


# no MeanSize_at_Age_obs
# no environ_variables
# no sizefreq_methods
# no tags
# no morphcomp

SS_writedat(dat.all, file.path(dir.all, 'China_three-area_data.ss'), overwrite=TRUE)

fore <- SS_readforecast(file.path(dir.S.base, "forecast.ss_new"),
                        Nfleets=ncol(dat.S$catch)-2, Nareas=1)
fore$max_totalcatch_by_fleet <- rep(-1, nfleets.all)
fore$fleet_assignment_to_allocation_group <- rep(0, nfleets.all)
fore$max_totalcatch_by_area <- rep(-1, 3)
SS_writeforecast(fore, dir=dir.all, overwrite=TRUE)
start <- SS_readstarter(file.path(dir.S.base, "starter.ss"))
start$datfile <- "China_three-area_data.ss"
start$ctlfile <- "China_three-area_control.ss"
SS_writestarter(start, dir=dir.all, overwrite=TRUE)

file.copy(from=file.path(dir.S.base, "SS3.exe"),
          to=file.path(dir.all, "SS3.exe"))

ctl.S.file <- file.path(dir.S.base, "control.ss_new")
ctl.C.file <- file.path(dir.C.base, "control.ss_new")
ctl.N.file <- file.path(dir.N.base, "control.ss_new")
ctl.S <- readLines(ctl.S.file)
ctl.C <- readLines(ctl.C.file)
ctl.N <- readLines(ctl.N.file)


# top of files
ctl.all.1 <- c(
    "#V3.24U",
    "#C China rockfish control file for sensitivity to three-area model",
    "#_data_and_control_files: china_WAonly_data.ss // china_WAonly_control.ss",
    "#_SS-V3.24U-safe;_08/29/2014;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.2_Win64",
    "1  #_N_Growth_Patterns",
    "1 #_N_Morphs_Within_GrowthPattern ",
    "3 # Number of recruitment assignments",
    "0 # Recruitment interaction requested?",
    "1 1 1 # Recruitment assignment to GP 1, seas 1, area 1",
    "1 1 2 # Recruitment assignment to GP 1, seas 1, area 2",
    "1 1 3 # Recruitment assignment to GP 1, seas 1, area 3",
    "0 # N movement definitions",
    ctl.S[(grep("Nblock_Patterns",ctl.S)):(grep("RecrDist_GP_1",ctl.S))],
    # recruit distribution stuff
    "-7 7 0 1 -1 50 -1 0 0 0 0 0 0 0 # Area 1",
    "-7 7 0 1 -1 50 1 0 0 0 0 0.5 0 0 # Area 2",
    "-7 7 0 1 -1 50 1 0 0 0 0 0.5 0 0 # Area 3",
    ctl.S[(grep("RecrDist_Seas_1",ctl.S)):(grep("initial_F_parms",ctl.S)+1)],
    paste(" 0 1 0 0.01 -1 99 -1 # InitF_",1:nfleets.all))

# Q setup
ctl.all.2 <- c(ctl.S[(grep("Q_setup",ctl.S)):(grep("Q_parms",ctl.S)-2)],
               ctl.C[(grep("Q_setup",ctl.C)):(grep("Q_parms",ctl.C)-2)],
               ctl.N[(grep("Q_setup",ctl.N)):(grep("Q_parms",ctl.N)-2)])

# extra Q parameters
ctl.all.3 <- c(ctl.S[(grep("Q_parms",ctl.S)):(grep("size_selex_types",ctl.S)-2)],
               ctl.C[(grep("Q_parms",ctl.C)):(grep("size_selex_types",ctl.C)-2)],
               ctl.N[(grep("Q_parms",ctl.N)):(grep("size_selex_types",ctl.N)-2)])

# size selex
size.sel.type.S <- read.table(ctl.S.file,
                              skip=grep("size_selex_types",ctl.S)+2,
                              nrows=nfleets.S)
size.sel.type.C <- read.table(ctl.C.file,
                              skip=grep("size_selex_types",ctl.C)+2,
                              nrows=nfleets.C)
size.sel.type.N <- read.table(ctl.N.file,
                              skip=grep("size_selex_types",ctl.N)+2,
                              nrows=nfleets.N)

for(irow in 1:nrow(size.sel.type.C)){
  if(size.sel.type.C$V4[irow]!=0){
    size.sel.type.C$V4[irow] <-
      fleet.table$num.new[which(fleet.table$model=="C" &
                                  fleet.table$num.old==size.sel.type.C$V4[irow])]
  }
}
for(irow in 1:nrow(size.sel.type.N)){
  if(size.sel.type.N$V4[irow]!=0){
    size.sel.type.N$V4[irow] <-
      fleet.table$num.new[which(fleet.table$model=="N" &
                                  fleet.table$num.old==size.sel.type.N$V4[irow])]
  }
}

# size selex for all areas as data.frame
ctl.all.4 <- rbind(size.sel.type.S,
                   size.sel.type.C,
                   size.sel.type.N)
names(ctl.all.4)[1] <- paste0("#",names(ctl.all.4)[1])

# age selex
ctl.all.5 <- c(ctl.S[228:229], rep("10 0 0 0", nfleets.all))
age.sel.type.S <- read.table(ctl.S.file,
                             skip=grep("age_selex_types",ctl.S)+1,
                             nrows=nfleets.S)
age.sel.type.C <- read.table(ctl.C.file,
                             skip=grep("age_selex_types",ctl.C)+1,
                             nrows=nfleets.C)
age.sel.type.N <- read.table(ctl.N.file,
                             skip=grep("age_selex_types",ctl.N)+1,
                             nrows=nfleets.N)

# selectivity parameters for all models
ctl.all.6 <- c(ctl.S[(grep("age_selex_types", ctl.S) + 2 + nfleets.S):
                       (grep("custom_sel-env_setup", ctl.S)-1)],
               ctl.C[(grep("age_selex_types", ctl.C) + 2 + nfleets.C):
                       (grep("custom_sel-env_setup", ctl.C)-1)],
               ctl.N[(grep("age_selex_types", ctl.N) + 2 + nfleets.N):
                       (grep("custom_sel-env_setup", ctl.N)-1)])

# variance adjustments
ctl.all.7 <- ctl.S[grep("custom_sel-env_setup", ctl.S):
                     grep("Variance_adjustments_to_input_values", ctl.S)]
var.adj.S <- read.table(ctl.S.file,
                        skip=grep("Variance_adjustments_to_input_values", ctl.S)+1,
                        nrows=6)
var.adj.C <- read.table(ctl.C.file,
                        skip=grep("Variance_adjustments_to_input_values", ctl.C)+1,
                        nrows=6)
var.adj.N <- read.table(ctl.N.file,
                        skip=grep("Variance_adjustments_to_input_values", ctl.N)+1,
                        nrows=6)
ctl.all.8 <- cbind(var.adj.S, var.adj.C, var.adj.N)
names(ctl.all.8)[1] <- paste0("#_",names(ctl.all.8)[1])

ctl.all.9 <- ctl.S[(grep("maxlambdaphase",ctl.S)-1):length(ctl.S)]


ctl.all.file <- file.path(dir.all, 'China_three-area_control.ss')
file.remove(ctl.all.file)
oldwidth <- options()$width
oldmax.print <- options()$max.print
options(width=5000,max.print=9999999)
zz <- file(ctl.all.file, open="at")
sink(zz)

writeLines(c(ctl.all.1,
             ctl.all.2,
             ctl.all.3))
print(ctl.all.4, row.names=FALSE, strip.white=TRUE)
writeLines(c(ctl.all.5,
             ctl.all.6,
             ctl.all.7))
print(ctl.all.8, row.names=FALSE, strip.white=TRUE)
writeLines(ctl.all.9)

options(width=oldwidth,max.print=oldmax.print)
sink()
close(zz)

# then manually changed R0 parameter line
# now reads:  4 10 7 4 -1 10 1 # SR_LN(R0)
