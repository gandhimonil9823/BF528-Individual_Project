install.packages("pacman")
require(pacman)  
library(reshape2)
library(grid)
library(gridExtra)
library(tidyverse)

#loads the package needed to import alevin data
#run pacman for downloading the necessary libraries
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr, ggpubr) 
fpkm_hist <-  read.csv("/usr4/bf527/gandhim/project_final/programmer/P0_1_cufflinks/genes.fpkm_tracking", sep = "\t")

fpkm_hist$FPKM=log(fpkm_hist$FPKM)

newdata <- subset(fpkm_hist, FPKM > 1)

hist(newdata$FPKM, main="Histogram log10 FPKM and FPKM > 1",
     xlab="log10 FPKM",
     col="darkmagenta")

ggplot(newdata, aes(x=FPKM)) + geom_histogram()

# hist(newdata$FPKM)

