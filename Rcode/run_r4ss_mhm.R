library(r4ss)
#library(xtable)

#setwd('C:/China2015/SS')
#dir.create(file.path(paste(getwd()), "plots_N"))
#read in the SS north output file

##set the working directory for the northern model
setwd('C:/China2015/r4ss')
#run r4ss for each model
modN = SS_output(dir='C:/China2015/SS/Northern_base', forecast=T, covar=T, ncol=1000)
modC = SS_output(dir='C:/China2015/SS/Central_base', forecast=T, covar=T, ncol=1000)
modS = SS_output(dir='C:/China2015/SS/Southern_base', forecast=T, covar=T, ncol=1000)
#save the workspace an image
save.image("China_SS_output2015.RData")



##################################################################################################################
##RUN r4ss plots for each model

#output directories
out.dir.N = "C:/China2015/r4ss/plots_N"
out.dir.C = "C:/China2015/r4ss/plots_C"
out.dir.S = "C:/China2015/r4ss/plots_S"


#North
SS_plots(modN,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=TRUE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4, printfolder='', dir=out.dir.N)

#Central
SS_plots(modC,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=TRUE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4, printfolder='', dir=out.dir.C)

#South
SS_plots(modS,png=TRUE,html=FALSE,datplot=TRUE,uncertainty=TRUE,maxrows=6, maxcols=6, 
         maxrows2=4, maxcols2=4, printfolder='', dir=out.dir.S)


###############################################################################################################
#PLOT EDITS OR COMPARISON PLOTS ACROSS MODELS

#if you need to reload the workspace
load("China_SS_output2015.RData")
# create base model summary list
out.N = modN
out.C = modC
out.S = modS
base.summary <- SSsummarize(list(out.N,out.C, out.S))
dir.compare.plots <- 'C:/China2015/r4ss/plots_compare' 

# vector of names and colors for N, C, and S
mod.names <- c("North","Central","South")
mod.cols  <- c("blue", "purple", "red")

############################################################################
#   Data_plot edits
#   need extra right-hand margin and differing heights based on data quantity
#   this should overwrite just a single existing figure in each case
SS_plots(out.N, pheight=4, plot=24, SSplotDatMargin=18, printfolder='', dir= out.dir.N)
SS_plots(out.C, pheight=6, plot=24, SSplotDatMargin=18, printfolder='', dir= out.dir.C)
SS_plots(out.S, pheight=5, plot=24, SSplotDatMargin=19, printfolder='', dir= out.dir.S)


############################################################################
##Central model length comp bubble plot edits

#shorter version of central model fleet names to fit in multi-fleet plot
  C.fleetnames.short <- c("1_CA_North_Comm_Dead" ,  "2_CA_North_Comm_Live",
                        "3_CA_North_Rec_PC"    ,  "4_CA_North_Rec_PR",
                        "5_OR_South_Comm_Dead"  ,  "6_OR_South_Comm_Live",
                        "7_OR_South_Rec_PC"     ,  "8_OR_South_Rec_PR",
                        "9_OR_North_Comm"       ,  "10_OR_North_Rec_PC",
                        "11_OR_North_Rec_PR"    ,  "12_OR_South_Rec_PC_ORBS")

#central model multi-fleet length data bubble plot in custom size
  SSplotComps(out.C, fleetnames=C.fleetnames.short, pheight=7,
            bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            maxrows=5, plotdir=file.path(out.dir.C))

#central model multi-fleet length residual bubble plot in custom size
  SSplotComps(out.C, fleetnames=C.fleetnames.short, pheight=7,
            bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            maxrows=5,plotdir=file.path(out.dir.C))



############################################################################
# time series comparison plots for exec summary (and repeated with regular plots)
SSplotComparisons(base.summary, plot=FALSE, print=TRUE, plotdir=dir.compare.plots,
                  spacepoints=20,  # years between points on each line
                  initpoint=0,     # "first" year of points (modular arithmetic)
                  staggerpoints=0, # points aligned across models
                  endyrvec=2015,   # final year to show in time series
                  legendlabels=mod.names, filenameprefix="base_", col=mod.cols)

############################################################################
# plot comparison of growth curves
png(file.path(dir.compare.plots, 'growth_comparison_June11_beta.png'),
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
png(file.path(dir.compare.plots, 'yield_comparison_3_models.png'),
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





####write the entire myreplist and mod structure to a file
#sink("list_of_dataframes.csv", type="output")
#invisible(lapply(modS, function(x) dput(write.csv(x))))
#sink()

#sink("mod_structure.csv", type="output")
#invisible(str(modC,list.len = 9999))
#sink()
