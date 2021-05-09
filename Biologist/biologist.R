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
file_import <- read.csv(file = '/usr4/bf527/gandhim/project_final2/pbmcmarkers.csv')

newdata <- subset(file_import, p_val_adj < 0.01) 

write.csv(newdata,'/usr4/bf527/gandhim/project_final2/pbmcmarkers_filtered.csv')


print(newdata$gene)
