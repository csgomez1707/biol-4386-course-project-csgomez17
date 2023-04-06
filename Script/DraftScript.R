#install the required packages

install.packages("tidyverse")
library(dplyr)

#load data

plant_horm 

# Rename teh varaiables
ph_1 <- rename(plant_horm,JA= "[JA]", meJA= "[meJA]", GA= "[GA]")

#replace NA values

ph_2 <- replace(ph_1, is.na(ph_1), "L1")

ph_3 <- slice(ph_2, -c(11:13))
ph_4 <- slice(ph_3, -c(8:9))

#move columns
library(tidyverse)
ph_5 <- pivot_longer (ph_4, cols = c("JA", "meJA", "GA"),
                      names_to = "hormone", values_to = "concentration")

# combine plant stage and plastochron

ph_5$plant_stage <- paste(ph_5$`Stage Leaf`, ph_5$Plastochron, sep = "_")

#remove the older columns and rearrange

ph_6 <- ph_5[, -c(1,2)]

ph_6 <- ph_5[, c("plant_stage", "hormone", "concentration")]

#separate values
ph_7 <- separate(ph_6, "concentration", c("concentration_Mean", "concentration_SD"), sep = "\\±",
                 convert = TRUE, remove = FALSE)
ph_8 <- ph_7[-c(3)]

#make plot with ggplot2

  ggplot(ph_8, aes(x = plant_stage, y = concentration_Mean , 
                   color = hormone, shape = hormone ))+ 
    geom_point() +
  geom_errorbar(aes(ymin = concentration_Mean - concentration_SD, 
                    ymax = concentration_Mean + concentration_SD),
                width = 0.2, size = 0.7) +
  ggtitle("Hormone expression at different stages ") +
  labs(y = "ng/g FW")+
  scale_y_log10(breaks = c(.1, .2, .3, .4, .5, .6, .7, .8, .9,
                           1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 
                           60, 70, 80, 90, 100), labels = c(.1, "","", "","","","","","",
                                                            1,"","", "","","","","","",
                                                            10, "","", "","","","","","",
                                                            100))+
      
  xlab("Plant stages") +
  ylab("ng/g FW")+
  theme(axis.text.y = element_blank())
  
  
  
  theme_classic()

  
#optional = facet_wrap(~ hormone, ncol = 3) + theme_minimal()
  
  