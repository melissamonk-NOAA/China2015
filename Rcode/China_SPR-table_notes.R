#########################################################################
#########################################################################
#########################################################################
### old code

    #pull the estimated depletion and 
     negSPRyrs = subset(negSPR, Year>=FirstYR & Year<=LastYR)
     negSPRyrs$SPR = 1 - negSPRyrs$SPR
     negSPRyrs$lowerCI = round(negSPRyrs$SPR +qnorm(0.025)*negSPRyrs$SPR_std, digits=2)
     negSPRyrs$upperCI = round(negSPRyrs$SPR -qnorm(0.025)*negSPRyrs$SPR_std, digits=2)
     negSPRyrs$lowerCI = abs(negSPRyrs$lowerCI)
     negSPRyrs$upperCI = 0
     negSPRyrs$CI = paste("(",negSPRyrs$upperCI,"-",negSPRyrs$lowerCI,")",sep="")
     negSPRtab=subset(negSPRyrs,select=c('Year','SPR','CI'))
     negSPRtab$Year = as.factor(negSPRtab$Year)
     colnames(negSPRtab) = c('Year','Estimated 1-SPR (%)','~ 95% confidence interval')
     
     negSPR_Exploit = cbind(negSPRtab,Exploittab)
     negSPR_Exploit_N = negSPR_Exploit



#########################################################################
#########################################################################
#########################################################################
### new code
### NOTE: to minimize change, I'm leaving the name "negSPR"
###       but this is really SPRratio and could be changed 

    #pull the estimated depletion and 
     negSPRyrs = modN$derived_quants[paste0("SPRratio_",FirstYR:LastYR),]
     negSPRyrs$SPRratio = negSPRyrs$Value
     negSPRyrs$lowerCI = round(negSPRyrs$SPRratio +qnorm(0.025)*negSPRyrs$StdDev, digits=2)
     negSPRyrs$upperCI = round(negSPRyrs$SPRratio -qnorm(0.025)*negSPRyrs$StdDev, digits=2)
     negSPRyrs$lowerCI = abs(negSPRyrs$lowerCI)
     negSPRyrs$upperCI = 0
     negSPRyrs$CI = paste("(",negSPRyrs$upperCI,"-",negSPRyrs$lowerCI,")",sep="")
     negSPRtab=subset(negSPRyrs,select=c('Year','SPRratio','CI'))
     negSPRtab$Year = as.factor(negSPRtab$Year)
     colnames(negSPRtab) = c('Year','Estimated fishing intensity','~ 95% confidence interval')
     
     negSPR_Exploit = cbind(negSPRtab,Exploittab)
     negSPR_Exploit_N = negSPR_Exploit

