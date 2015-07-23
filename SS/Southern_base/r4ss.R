# r4ss
#install.packages("devtools")
#devtools::install_github("r4ss/r4ss")
library(r4ss)

#out <- SS_output(getwd(),covar=FALSE)
out <- SS_output(getwd())

flt.names <- c("Commercial_Dead","Commercial_Live","Rec_Charter","Rec_Private",
               "Commercial_Discard",
               "Rec_Charter_Onboard_87-98","Rec_Charter_Onboard_1999-2014",
               "CCFRP_comps","Abrams_thesis_CAAL")

#SS_plots(out, uncertainty=F)
#SS_plots(out, fleetnames=flt.names, )

#SS_plots(out, datplot=TRUE, maxrows=6, maxcols=6, maxrows2=4, maxcols2=4)

SS_plots(out, datplot=TRUE, uncertainty=TRUE,
         maxrows=6, maxcols=6, maxrows2=4, maxcols2=4,fleetnames=flt.names)
