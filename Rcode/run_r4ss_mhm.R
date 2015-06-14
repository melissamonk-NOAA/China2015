library(r4ss)
#library(xtable)

#setwd('C:/China2015')
#dir.create(file.path(paste(getwd()), "plots_N"))
#read in the SS north output file
setwd('C:/Assessment2015/SS_chinaN')
modN = SS_output(dir='C:/Assessment2015/SS_chinaN', forecast=T, covar=T, ncol=1000)
save.image("Chinanorth2015.RData")
SS_plots(modN,png=TRUE,html=FALSE,dir="C:/Assessment2015/SS_chinaN/")


#read in the SS central output file
setwd('C:/Assessment2015/SS_chinaC')
modC = SS_output(dir='C:/Assessment2015/SS_chinaC', forecast=T, covar=T, ncol=1000)
save.image("Chinacentral2015.RData")
SS_plots(modC,png=TRUE,html=FALSE,dir="C:/Assessment2015/SS_chinaC/")

#read in the SS south output file
setwd('C:/Assessment2015/SS_chinaS')
modS = SS_output(dir='C:/Assessment2015/SS_chinaS', forecast=T, covar=T, ncol=1000)
save.image("Chinasouth2015.RData")
SS_plots(modS,png=TRUE,html=FALSE,dir="C:/Assessment2015/SS_chinaS/")





# create base model summary list
base.summary <- SSsummarize(list(modN, modC, modS))
dir.plots <- 'c:/Assessment2015/Compare/plots'  # could be moved to github if we wish

# vector of names and colors for N, C, and S
mod.names <- c("North","Central","South")
mod.cols  <- c("blue", "purple", "red")
############################################################################
# time series comparison plots for exec summary (and repeated with regular plots)
SSplotComparisons(base.summary, plot=FALSE, print=TRUE, plotdir=dir.plots,
                  spacepoints=20,  # years between points on each line
                  initpoint=0,     # "first" year of points (modular arithmetic)
                  staggerpoints=0, # points aligned across models
                  endyrvec=2015,   # final year to show in time series
                  legendlabels=mod.names, filenameprefix="base_", col=mod.cols)

##################################################################################


#load('Chinanorth2015.RData')
#load('Chinasouth2015.Rdata')




####write the entire myreplist to a file
#sink("list_of_dataframes.csv", type="output")
#invisible(lapply(modN, function(x) dput(write.csv(x))))
#sink()


#sink("mod_structure.csv", type="output")
#invisible(str(modN,list.len = 9999))
#sink()
