### notes on makeing plots for China Rockfish assessment document
### started 6/13/15

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


############################################################################
# make default plots from individual models
# Melissa M., you've probably covered this already elsewhere 
SS_plots(out.N, datplot=TRUE, uncertainty=TRUE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
SS_plots(out.C, datplot=TRUE, uncertainty=TRUE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)
SS_plots(out.S, datplot=TRUE, uncertainty=TRUE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)


############################################################################
# plots of comps and residuals in custom sizes
# NOTE: depends on r4ss update on 6-21-15

# northern model multi-fleet length data bubble plot in custom size
SSplotComps(out.N, pheight=6,
            bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            plotdir=file.path(dir.N.base, 'plots'))
# northern model multi-fleet length residual bubble plot in custom size
SSplotComps(out.N, pheight=6,
            bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            plotdir=file.path(dir.N.base, 'plots'))

# shorter version of central model fleet names to fit in multi-fleet plot
C.fleetnames.short <- c("1_CA_North_Comm_Dead" ,  "2_CA_North_Comm_Live",
                        "3_CA_North_Rec_PC"    ,  "4_CA_North_Rec_PR",
                        "5_OR_South_Comm_Dead"  ,  "6_OR_South_Comm_Live",
                        "7_OR_South_Rec_PC"     ,  "8_OR_South_Rec_PR",
                        "9_OR_North_Comm"       ,  "10_OR_North_Rec_PC",
                        "11_OR_North_Rec_PR"    ,  "12_OR_South_Rec_PC_ORBS")
# central model multi-fleet length data bubble plot in custom size
SSplotComps(out.C, fleetnames=C.fleetnames.short, pheight=8,
            bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.base, 'plots'))
# central model multi-fleet length residual bubble plot in custom size
SSplotComps(out.C, fleetnames=C.fleetnames.short, pheight=8,
            bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            plotdir=file.path(dir.C.base, 'plots'))


# southern model multi-fleet length data bubble plot in custom size
SSplotComps(out.S, pheight=7,
            bub=TRUE, datonly=TRUE, cexZ1=4, subplot=24, print=TRUE,
            plotdir=file.path(dir.S.base, 'plots'))
# southern model multi-fleet length residual bubble plot in custom size
SSplotComps(out.S, pheight=7,
            bub=TRUE, datonly=FALSE, subplot=24, print=TRUE,
            plotdir=file.path(dir.S.base, 'plots'))

############################################################################
# stuff for comparing across models

# vector of names and colors for N, C, and S
mod.names <- c("North","Central","South")
mod.cols  <- c("blue", "purple", "red")

# create base model summary list
base.summary <- SSsummarize(list(out.N, out.C, out.S))


############################################################################
# time series comparison plots for exec summary (and repeated with regular plots)
SSplotComparisons(base.summary, plot=FALSE, print=TRUE, plotdir=dir.plots,
                  spacepoints=20,  # years between points on each line
                  initpoint=0,     # "first" year of points (modular arithmetic)
                  staggerpoints=0, # points aligned across models
                  endyrvec=2015,   # final year to show in time series
                  legendlabels=mod.names, filenameprefix="base_", col=mod.cols)
SSplotComparisons(base.summary, plot=FALSE, print=TRUE, plotdir=dir.plots,
                  subplot=1:10,
                  spacepoints=20,  # years between points on each line
                  initpoint=0,     # "first" year of points (modular arithmetic)
                  staggerpoints=0, # points aligned across models
                  endyrvec=2025,   # final year to show in time series
                  legendlabels=mod.names, filenameprefix="forecast_", col=mod.cols)

############################################################################
# plot comparison of growth curves
png(file.path(dir.plots, 'growth_comparison_PRE-STAR_BASE.png'),
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

############################################################################
# plot data by type and year
#   need extra right-hand margin and differing heights based on data quantity
#   this should overwrite just a single existing figure in each case
SS_plots(out.N, pheight=4, plot=24, SSplotDatMargin=18)
SS_plots(out.C, pheight=6, plot=24, SSplotDatMargin=18)
SS_plots(out.S, pheight=5, plot=24, SSplotDatMargin=18)
