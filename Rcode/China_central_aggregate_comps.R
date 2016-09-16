dat.C <- SS_readdat(file.path('c:/SS/China/models/China_Central_STAR_M_0.07_tune/',
                              'china_central_data.ss'))
fleet.table <- data.frame(number=1:12,
                          name=dat.C$fleetnames[1:12],
                          area=c(rep("CA_N",4),rep("OR_S",4),rep("OR_N",3),"ORBS"),
                          mode=c("Comm_Dead","Comm_Live","Rec_PC","Rec_PR",
                              "Comm_Dead","Comm_Live","Rec_PC","Rec_PR",
                              "Comm","Rec_PC","Rec_PR", "ORBS"),
                          newnumber=c(1,2,3,4, 1,2,3,4, 5, 3, 4, 6))
                          ## newname=c("1_Comm_Dead_SoutOfFlorence",
                          ##     "2_Comm_Live_SoutOfFlorence",
                          ##     "3_Rec_PC",
                          ##     "4_Rec_PR",
                          ##     "5

dat.C2 <- dat.C
head(dat.C2$lencomp)

#############################################################
# length comps
newlencomp <- NULL
for(newnum in 1:max(fleet.table$newnumber)){
  oldnums <- fleet.table$number[fleet.table$newnumber==newnum]
  lencomp.f <- dat.C$lencomp[dat.C$lencomp$FltSvy %in% oldnums,]
  yrs <- sort(unique(lencomp.f$Yr))
  if(length(yrs)>0){
    for(y in yrs){
      lencomp.f.y <- lencomp.f[lencomp.f$Yr==y,]
      newlencomp <- rbind(newlencomp,
                       cbind(data.frame(Yr=y, Seas=1, FltSvy=newnum, Gender=0, Part=0),
                             t(apply(lencomp.f.y[,-(1:5)],2,sum))))
    }
  }
}
dat.C2$lencomp <- newlencomp
dat.C2$N_lencomp <- nrow(newlencomp)



#############################################################
# age comps
newagecomp <- dat.C$agecomp
# renumber age fleets without aggregating anything
newagecomp$FltSvy[newagecomp$FltSvy==-5] <- -1
newagecomp$FltSvy[newagecomp$FltSvy==5] <- 1
newagecomp$FltSvy[newagecomp$FltSvy==-7] <- -3
newagecomp$FltSvy[newagecomp$FltSvy==7] <- 3
newagecomp$FltSvy[newagecomp$FltSvy==10] <- 6

dat.C2$agecomp <- newagecomp
# no change to number of age comps

#############################################################
# indices

# logbook index
dat.C2$CPUE$index[dat.C$CPUE$index==6] <- 2
# MRFSS
dat.C2$CPUE$index[dat.C$CPUE$index==-7] <- -7
# OR onboard
dat.C2$CPUE$index[dat.C$CPUE$index==10] <- 3
# OR ORBS
dat.C2$CPUE$index[dat.C$CPUE$index==12] <- 6

#############################################################
# catch

newcatch <- NULL
for(newnum in 1:5){
  oldnums <- fleet.table$number[fleet.table$newnumber==newnum]
  if(length(oldnums)>1){
    newcol <- apply(dat.C$catch[,oldnums], 1, sum)
  }else{
    newcol <- dat.C$catch[,oldnums]
  }
  if(is.null(newcatch)){
    newcatch <- data.frame(newcol)
  }else{
    newcatch <- cbind(newcatch, data.frame(newcol))
  }
}
names(newcatch) <- paste0("fleet",1:5)
newcatch$year <- dat.C$catch$year
newcatch$seas <- 1

dat.C2$catch <- newcatch

fleet.table
##    number                         name area      mode newnumber
## 1       1   1_CA_NorthOf4010_Comm_Dead CA_N Comm_Dead         1
## 2       2   2_CA_NorthOf4010_Comm_Live CA_N Comm_Live         2
## 3       3      3_CA_NorthOf4010_Rec_PC CA_N    Rec_PC         3
## 4       4      4_CA_NorthOf4010_Rec_PR CA_N    Rec_PR         4
## 5       5    5_OR_SouthernOR_Comm_Dead OR_S Comm_Dead         1
## 6       6    6_OR_SouthernOR_Comm_Live OR_S Comm_Live         2
## 7       7       7_OR_SouthernOR_Rec_PC OR_S    Rec_PC         3
## 8       8       8_OR_SouthernOR_Rec_PR OR_S    Rec_PR         4
## 9       9         9_OR_NorthernOR_Comm OR_N      Comm         5
## 10     10      10_OR_NorthernOR_Rec_PC OR_N    Rec_PC         3
## 11     11      11_OR_NorthernOR_Rec_PR OR_N    Rec_PR         4
## 12     12 12_OR_SouthernOR_Rec_PC_ORBS ORBS      ORBS         6
dat.C2$fleetnames <- c("Comm_Dead","Comm_Live","Rec_PC","Rec_PR",
                       "Comm_OR_North","ORBS","MRFSS")
dat.C2$surveytiming   <- rep(0.5, 7)
dat.C2$areas          <- rep(1,   7)
dat.C2$units_of_catch <- rep(1,   5)
dat.C2$se_log_catch   <- rep(0.1, 5)

## dat.C2$fleetinfo1 <- dat.C$fleetinfo1[,c(1:7,13)]
## names(dat.C2$fleetinfo1) <- c(paste0("fleet",1:7),"input")
## dat.C2$fleetinfo2 <- dat.C$fleetinfo2[,c(1:5,12)]
## names(dat.C2$fleetinfo2) <- c(paste0("fleet",1:5),"input")

dat.C2$Nfleet <- 5
dat.C2$Nsurveys <- 2

dat.C2$init_equil <- rep(0,5)

dat.C2$CPUEinfo <- data.frame(Fleet=1:7,
                              Units=c(0,1,0,0,0,0,1),
                              Errtype=0)
SS_writedat(dat.C2,
            file.path('c:/SS/China/models/China_Central_STAR_M_0.07_aggregated/',
                      'china_central_aggregated_data.ss'),
            overwrite=TRUE)

