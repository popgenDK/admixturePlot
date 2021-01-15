
## colors
library(RColorBrewer)
palette(c(brewer.pal(12, "Paired"),"#1B9E77","#999999"))

source("admixFun.R")

#list Q files  and sort for K
l<-list.files("data/",full=T,pattern="qopt")
files<-sort(l)

## population file
pop <- scan("data/pepperGBScleanIndV1.vcf.popSingle",what="df",na="")


# possible K
Kall <- 3:10

## read Qs
allQ <- list()
for(K in Kall)
    allQ[[K]]<-t(read.table(files[K-min(Kall)+1]))



plotMulti(allQ,reorder=1,pop,fast=T)

