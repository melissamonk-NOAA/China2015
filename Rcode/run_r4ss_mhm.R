library(r4ss)
#library(xtable)

#setwd('C:/China2015')
#dir.create(file.path(paste(getwd()), "plots_N"))
#read in the SS north output file
setwd('C:/Assessment2015/SS_chinaN')
modN = SS_output(dir='C:/Assessment2015/SS_chinaN', forecast=T, covar=T, ncol=1000)
save.image("Chinanorth2015.RData")
SS_plots(modN,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=FALSE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4,
         dir="C:/Assessment2015/SS_chinaN")
#SS_plots(modN, pheight=4, plot=24, SSplotDatMargin=18)


#read in the SS central output file
setwd('C:/Assessment2015/SS_chinaC')
modC = SS_output(dir='C:/Assessment2015/SS_chinaC', forecast=T, covar=T, ncol=1000)
save.image("Chinacentral2015.RData")
SS_plots(modC,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=FALSE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4,dir="C:/Assessment2015/SS_chinaC")
SS_plots(modC, pheight=6, plot=24, SSplotDatMargin=18)
#SS_plots(out.S, pheight=5, plot=24, SSplotDatMargin=18)

#read in the SS south output file
setwd('C:/Assessment2015/SS_chinaS')
modS = SS_output(dir='C:/Assessment2015/SS_chinaS', forecast=T, covar=T, ncol=1000)
save.image("Chinasouth2015.RData")
SS_plots(modS,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=FALSE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4,dir="C:/Assessment2015/SS_chinaS")
#SS_plots(modS, pheight=5, plot=24, SSplotDatMargin=18)



# create base model summary list
out.N = modN
out.C = modC
out.S = modS
base.summary <- SSsummarize(list(out.N,out.C, out.S))
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

############################################################################
# plot comparison of growth curves
png(file.path(dir.plots, 'growth_comparison_June11_beta.png'),
    width=6.5, height=5, res=300, units='in')
SSplotBiology(out.N, colvec=c(mod.cols[1],NA,NA), subplot=1)
SSplotBiology(out.C, colvec=c(mod.cols[2],NA,NA), subplot=1, add=TRUE)
SSplotBiology(out.S, colvec=c(mod.cols[3],NA,NA), subplot=1, add=TRUE)
# legend to cover up non-useful Females/Males default legend
legend('topleft', legend=mod.names, col=mod.cols, lwd=3, bg='white')
# close PNG file
dev.off()


############################################################################
# plot comparison of yield curves
png(file.path(dir.plots, 'yield_comparison_3-models.png'),
    width=6.5, height=6.5, res=300, units='in', pointsize=10)
par(las=1)
SSplotYield(out.S, col=mod.cols[3], subplot=1)
grid()
SSplotYield(out.C, col=mod.cols[2], subplot=1, add=TRUE)
SSplotYield(out.N, col=mod.cols[1], subplot=1, add=TRUE)
# legend to cover up non-useful Females/Males default legend
legend('topright', legend=mod.names, col=mod.cols, lwd=3, bg='white', bty='n')
# close PNG file
dev.off()
#load('Chinanorth2015.RData')
#load('Chinasouth2015.Rdata')




####write the entire myreplist to a file
sink("list_of_dataframes.csv", type="output")
invisible(lapply(modS, function(x) dput(write.csv(x))))
sink()


sink("mod_structure.csv", type="output")
invisible(str(modS,list.len = 9999))
sink()
