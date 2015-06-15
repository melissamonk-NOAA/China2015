### notes on makeing plots for China Rockfish assessment document
### started 6/13/15

stop("\n  This file should not be sourced!") # note to stop Ian from accidental sourcing

# paths on Ian's computers (other folks can add their own statements)
if (system("hostname", intern=TRUE) %in% c("NWCDW01724920","NWCLW01724829") ){
  dir.mods <- 'c:/SS/China/models' # could be moved to github if we wish
  dir.plots <- 'c:/SS/China/plots'  # could be moved to github if we wish
}

# read base model from each area
dir.S.base <- file.path(dir.mods, 'China_South_2015-06-11_EJ_v01_estimate_h_and_M_Bratio')
dir.C.base <- file.path(dir.mods, 'central_v6_June13_forecast')
dir.N.base <- file.path(dir.mods, 'north_v8_June13_forecast')
out.S <- SS_output(dir.S.base)
out.C <- SS_output(dir.C.base)
out.N <- SS_output(dir.N.base)


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


