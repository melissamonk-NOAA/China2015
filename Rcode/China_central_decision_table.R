# temporary stuff related to in-between versions of r4ss
source('c:/github/r4ss/R/SS_decision_table_stuff.R')
.libPaths(new= "C:/Users/Ian.Taylor/Documents/R/R-3.1.3/library")
library(r4ss)
packageVersion('r4ss')

dir.fore <- 'c:/SS/China/models/forecasts/'

base_SPR <- SS_output(file.path(dir.fore,'base_SPR/'), covar=FALSE)
low_SPR <- SS_output(file.path(dir.fore,'low_SPR/'), covar=FALSE)
high_SPR <- SS_output(file.path(dir.fore,'high_SPR/'), covar=FALSE)

dt <- SS_decision_table_stuff(base_SPR)
dt_lo <- SS_decision_table_stuff(low_SPR)
dt_hi <- SS_decision_table_stuff(high_SPR)

# create table based on harvest control rule projection in SS
# that can be mapped into an alternative state of nature
fore.catch.mid <- SS_ForeCatch(base_SPR,          # object created by SS_output for low state
                               yrs=2017:2026, # forecast period after fixed ACL years
                               average=FALSE) # use values forecast in SS, not historic catch

fore.catch.lo <- SS_ForeCatch(low_SPR,        # object created by SS_output for low state
                              yrs=2017:2026,  # forecast period after fixed ACL years
                              average=FALSE)  # use values forecast in SS, not historic catch

fore.catch.hi <- SS_ForeCatch(high_SPR,        # object created by SS_output for low state
                              yrs=2017:2026,  # forecast period after fixed ACL years
                              average=FALSE)  # use values forecast in SS, not historic catch

### these values were then pasted into forecast files with names like
## "forecast_fixed_catch_base.ss"       
## "forecast_fixed_catch_high.ss"       
## "forecast_fixed_catch_low.ss"

# loop over combinations to create directories and copy files
for(istate in 1:3){
  for(icatch in 1:3){
    if(istate!=icatch){ # only need new runs for off-diagonal cells of decision table
      dir.src <- file.path(dir.fore,
                           paste0(c("base","low","high")[istate], "_SPR"))
      dir.target <- file.path(dir.fore,
                              paste0(c("base","low","high")[istate],
                                     "_fixed_",
                                     c("base","low","high")[icatch],
                                     "_catch"))
      # create new directory
      dir.create(dir.target)
      # copy files from same state of nature
      for(file in c("starter.ss","ss3.par",
                    "china_central_data.ss", "china_central_control.ss",
                    "SS3safe_Win64.exe")){
        file.copy(file.path(dir.src, file),
                  file.path(dir.target, file))
      }
      # copy forecast file based on which catch stream is used
      file.copy(file.path(dir.fore, paste0("forecast_fixed_catch_",
                                           c("base","low","high")[icatch],
                                           ".ss")),
                file.path(dir.target, "forecast.ss"))
    }
  }
}

# loop over combinations again to run the model
for(istate in 1:3){
  for(icatch in 1:3){
    if(istate!=icatch){ # only need new runs for off-diagonal cells of decision table
      dir.src <- file.path(dir.fore,
                           paste0(c("base","low","high")[istate], "_SPR"))
      dir.target <- file.path(dir.fore,
                              paste0(c("base","low","high")[istate],
                                     "_fixed_",
                                     c("base","low","high")[icatch],
                                     "_catch"))
      setwd(dir.target)
      system("SS3safe_Win64.exe -phase 10 -nohess") # starting from par file in all cases
    }
  }
}
setwd(dir.fore)


# loop over combinations again to get model output
for(istate in 1:3){
  for(icatch in 1:3){
    if(istate!=icatch){
      dir <- file.path(dir.fore,
                       paste0(c("base","low","high")[istate],
                              "_fixed_",
                              c("base","low","high")[icatch],
                              "_catch"))
    }else{
      dir <- file.path(dir.fore,
                       paste0(c("base","low","high")[istate],
                              "_SPR"))
    }
    replist <- SS_output(dir, covar=FALSE, verbose=FALSE, printstats=FALSE)
    assign(paste0(c("base","low","high")[istate],
                  "_state_",
                  c("base","low","high")[icatch],
                  "_catch"), value=replist)
  }
}

# all states, low catch
table <- rbind(
    cbind(SS_decision_table_stuff(low_state_low_catch, yrs=2015:2026),
          SS_decision_table_stuff(base_state_low_catch, yrs=2015:2026),
          SS_decision_table_stuff(high_state_low_catch, yrs=2015:2026)),

    cbind(SS_decision_table_stuff(low_state_base_catch, yrs=2015:2026),
          SS_decision_table_stuff(base_state_base_catch, yrs=2015:2026),
          SS_decision_table_stuff(high_state_base_catch, yrs=2015:2026)),

    cbind(SS_decision_table_stuff(low_state_high_catch, yrs=2015:2026),
          SS_decision_table_stuff(base_state_high_catch, yrs=2015:2026),
          SS_decision_table_stuff(high_state_high_catch, yrs=2015:2026)))

write.csv(table, file.path(dir.fore, "decision_table_guts_China_central.csv"))
