 #install the required packages

install.packages("tidyverse")
library(dplyr)
library(ggplot2)

#load data

Plant_Raw_Data

# Rename the varaiables
ph_1 <- rename(Plant_Raw_Data,JA= "[JA]", meJA= "[meJA]", GA= "[GA]")


#replace NA values

ph_2 <- replace(ph_1, is.na(ph_1), "L1")

ph_3 <- slice(ph_2, -c(11:13))
ph_4 <- slice(ph_3, -c(8:9))

#move columns
library(tidyverse)

 
ph_5 <- pivot_longer (ph_4, cols = c("JA", "meJA", "GA"),
                      names_to = "Hormone", values_to = "Concentration")

# combine plant stage and plastochron

ph_5$plant_stage <- paste(ph_5$`Stage Leaf`, ph_5$Plastochron, sep = "_")

#remove the older columns and rearrange

ph_6 <- ph_5[, -c(1,2)]

ph_6 <- ph_5[, c("plant_stage", "Hormone", "Concentration")]

#separate values
ph_7 <- separate(ph_6, "Concentration", c("Concentration_Mean", "Concentration_SD"), sep = "\\±",
                 convert = TRUE, remove = FALSE)
ph_8 <- ph_7[-c(3)]

#make plot with ggplot2

breaks <- c(.1, .2, .3, .4, .5, .6, 
              .7, .8, .9, 1, 2, 3, 4, 5, 
              6, 7, 8, 9, 10, 20, 30, 
              40, 50, 60, 70, 80, 90, 100)
limits <- c(.1,100)
labels <- c(".1", "", "","", "", "",
              "", "", "", "1", "","", "", "", 
              "", "", "", "", "10", "", "", 
              "", "", "", "", "", "", "100")

ggplot(ph_8, aes(x = plant_stage, y = Concentration_Mean , 
                   color = Hormone, shape = Hormone )) + 
  geom_point(position = position_dodge(width = 0))+
  geom_errorbar(aes(ymin = Concentration_Mean - Concentration_SD, 
                    ymax = Concentration_Mean + Concentration_SD),
                position = position_dodge(width = 0),width = 1)+
  ggtitle("Hormone expression at different stages ") +
  scale_color_manual(values = c("GA" = "darkgreen", 
                                "JA" = "purple", "meJA" = "blue"))+
  xlab("Plant Stage") +
  ylab("ng/g FW")+
  scale_y_continuous(trans="log10", labels = labels, breaks = breaks, limits = limits)+
  scale_shape_manual(values = c(17,16,15))+
  guides(shape = guide_legend(
    override.aes = list(size = 3)))+
  geom_point(size = 3)+
  theme_classic()+
  theme(panel.grid.major = element_blank(),
         panel.grid.minor = element_blank())
  
  
