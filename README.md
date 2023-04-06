# Jasmonic acid levels decline in advance of the transition to the adult phase in maize  

Osadchuk K, Cheng CL, Irish EE. Jasmonic acid levels decline in advance of the transition to the adult phase in maize. Plant Direct. 2019 Nov 26;3(11):e00180. doi: 10.1002/pld3.180. PMID: 31788658; PMCID: PMC6879778. 

Introduction: 

In early plant development we have different hormones acting at different stages, from a juvenile vegetative state to an adult flowerings stage. One of the abundant hormones in the juvenile phase is Jasmonic acid (JA) and Gibberellic acid (GA). These two hormones are responsible for growth and to redirecting metabolism. Jasmonic acid is part of the Jamonates (JAs), a class of plant hormones that play essential roles in response to tissue wounding.  Methyl jasmonate (meJA) is one of the forms of JA,  key for its ability to response to stress, like drought, salinity changes and heat. Micro RNA 165 plays a critical role in plant phase transition, important for the vegetative juvenile to flowering adult transition. As the plant matures the levels of miRNA165 decline, and transcripts of genes associated with JA are also more abundant in the juvenile phase. Previous studies have shown that application of JA on developing plants extends the juvenile phase and delays the decline in miR156 levels. This study explores the roles of jasmonic acid levels in promoting the transition to the adult phase in maize. 

 

In order to test if the addition of JA promotes joviality, JA and MeJA levels were measured in successive stages of leaf development. Gibberellic acid (GA) was also measured along with JA and MeJA, since it is essential for the transition to the adult phase. Findings showed that when exogenous doses of JA were given, as many as three additional juvenile leaves were produced. The production of additional juvenile leaves suggests that JA does play a key role in the timely adult transition in maize. Quantifying these key hormones in phase change mutants provided insight into how these two hormones control phase-specific patterns of differentiation in early development. Likely affecting duration (and likely initiation) of juvenile phase maize. The figure to be replicated shows the relationship between successive developmental time points and the hormones expressed. This shows there is a change of hormones as the leaf transitions into a mature stage, with meJA/JA being highly expressed in later stages on an early leaf. However there is also a low expression of these hormones in older leaves, which have different growth and allocation of molecules. 

 

Image to reproduce: 

 

 ![Firefox_Screenshot_2023-04-06T00-54-58 965Z](https://user-images.githubusercontent.com/125313559/230246110-9244d7bc-9acc-4202-adf8-cca7cfc97114.png)


Fig 1. Leaf 1 of Maize hybrid at successive developmental time points, transition leaf 6 (L1P8) at plastochron 8, and adult leaf 8 at plastochron 10 (L8P10). Values are shown as means of three to six biological replicates. gFW, grams fresh weight.  

* indicates significant difference of previous developmental stage using unpaired students t test p < .05, ** indicates p < .01. ‡ indicates significant difference compared with L1P8, p < .05. ‡‡ indicates p < .01 

This figure shows the endogenous concentration of JA, meJA, and GA at different successive developmental time points. L# shows the leaf formed, (L1 being the youngest leaf )and the P# is the plastochron (developmental stage name). Combined this shows the different leaves as the plant grows and the developmental stage of each leave, we then look at the hormones expressed in each of these time points. In L1, P1-8 were chosen as P9 is when JA levels began to decline, meJA was at its maximum level, making L1P8 as a benchmark for JA levels in developing juvenile leaves. In Leaf1 JA and meJA are expressed highly as the leaf grows and remains juvenile, the levels of GA do not see a drastic change in concentration. In the later adult leaves we see a switch, and GA is present at higher levels in leaves  of older stages of development (L6-8). Leaves 1–4 display only juvenile traits, leaves 6-8 displaying adult characteristics.  

 

Data:   

I obtained the data from the supplementary materials section in the original article, from there I transferred the data from table 2 to an excel spreadsheet and uploaded it to GitHub. The table from the pdf is the following: 

 ![Firefox_Screenshot_2023-04-06T00-55-20 794Z](https://user-images.githubusercontent.com/125313559/230246135-d5b7f755-5b39-4dbc-9663-91399fcd3293.png)


I will use this data to upload it to R and make a graph that looks like the original graph Fig 2.  

I then converted this table into a csv document to use in R, after tidying the data in R I was able to work on the figure.  

Materials and Methods: 

Plant material and growth conditions: 

For this set of experiments the hybrid seeds were made from Maize inbreds B73 and Mo17. Plants were grown in a temperature-controlled greenhouse and illuminated for 14 hr daily. Hybrids were used for quantifying hormones. 

Seedling treatment and scoring: 

Emerging seedlings (first leaf ) received 100 μl of 5 mM JA in 5% ethanol to the apical whorl (apical shoot meristem). Control treatments were application of the same volume of solvent. Treatments with JA occurred at 2-day intervals.  

Hormone measurement: 

Hormones were extracted from 100 mg pooled fresh leaf tissue at desired developmental stage points using  2-propanol:H2O:HCl with dihydromethyljasmonate as an internal standard to adjust results for extraction efficiency. Tissue samples were harvested at the same time each day to account for circadian variations in hormone levels. Extracts were purified with dichloromethane, dried, and resuspended in methanol. Hormone levels in each extract were determined using ultra-high-pressure liquid chromatography–tandem mass spectrometry (Acquity H-Class UPLC—Waters TQD). 

Preliminary results: 
![Firefox_Screenshot_2023-04-06T00-55-59 521Z](https://user-images.githubusercontent.com/125313559/230246163-ee161237-9b48-44b2-9072-5663a1492263.png)


This is the figure I was able to produce from the data given in the table. I worked in R Studio to produce the following figure on 04/05/2023. 

   
