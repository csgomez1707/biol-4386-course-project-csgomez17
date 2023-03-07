# READ ME
Jasmonic acid levels decline in advance of the transition to the adult phase in maize  

Osadchuk K, Cheng CL, Irish EE. Jasmonic acid levels decline in advance of the transition to the adult phase in maize. Plant Direct. 2019 Nov 26;3(11):e00180. doi: 10.1002/pld3.180. PMID: 31788658; PMCID: PMC6879778. 

Introduction: 

In early plant development we have different hormones acting at different stages, driving the development of the shoot, leading to flowering. One of the hormones abundant in this juvenile phase compared to adult maize is Jasmonic acid (JA) and Gibberellic acid (GA). These two hormones are responsible for growth and to redirecting metabolism. Jasmonic acid is part of the Jamonates (JAs), a class of plant hormones that play essential roles in response to tissue wounding.  Methyl jasmonate (meJA) is one of the forms of JA and is key for its ability to response to stress, like drought, salinity changes and heat. Previous studies have shown that application of JA on developing plants extends the juvenile phase and delays the decline in miR156 levels. miR156 plays a key role in biological processes, including developmental and metabolic regulation, it generates leaf formation. 

What roles does jasmonic acid levels have in the transition to the adult phase in maize? In order to test if the addition of JA promotes joviality, JA and MeJA levels were measured in successive stages of leaf development, and in later leaves in normal and mutant maize. Gibberellic acid was measured along with JA and MeJA, showing that JA levels increased from germination through leaf one differentiation. Later declining in leaves as the shoot approached phase change. Findings showed that the levels of GA were low in leaf one after germination and increased as the shoot matured to the adult phase. After multiple does of exogenous JA were given, as many as three additional juvenile leaves were produced. Suggesting the key role of JA in new leaf production and joviality. Quantifying these key hormones in phase change mutants provided insight into how these two hormones control phase-specific patterns of differentiation in early development. Concluding that JA is a leaf-provisioned signal, affecting duration (and likely initiation) of juvenile phase maize. The figure to be replicated shows the relationship between successive developmental time points and the hormones expressed. This shows there is a change of hormones as the leaf transitions into a mature stage, with meJA/JA being highly expressed in later stages on an early leaf. However there is also a low expression of these hormones in older leaves, which have different growth and allocation of molecules. 

 

Image to reproduce: 

 
![Screenshot(1)](https://user-images.githubusercontent.com/125313559/223488605-9250203a-15ab-41c4-a1aa-dd2929fedb98.png)

 

Fig 1. in mo17xB73 maize hybrid of leaf 1 at successive developmental time points, transition leaf 6 at plastochron 8, and adult leaf 8 at plastochron 10. Values are shown as means of three to six biological replicates. gFW, grams fresh weight. * indicates significant difference of previous developmental stage using unpaired students t test p < .05, ** indicates p < .01. ‡ indicates significant difference compared with L1P8, p < .05. ‡‡ indicates p < .01 

This figure shows the endogenous concentration of JA, meJA, and GA at different successive developmental time points. L# shows the leaf formed, and the P# is the plastochron (developmental stage name). Combined this shows the different leaves as the plant grows and the developmental stage of each leave, we then look at the hormones expressed in each of these time points. We can see that JA and meJA are expressed highly at the first leaf at the later stages of development while in early development, all three hormones are found in similar levels. In the later leaves we see a switch, and GA is more present in later leaves in later developmental stages. 

 
How will I obtain the data:  

Data was given in the following table 

![Screenshot](https://user-images.githubusercontent.com/125313559/223488169-97039e0f-5f9b-4500-b0c9-36af4b350e51.png)

Materials and methods:

Plant material and growth conditions: 

For this set of experiments the Maize inbreds B73 and Mo17 were used to cross crossed to generate hybrid seeds. Plants were grown in a temperature-controlled greenhouse and illuminated for 14 hr daily under 1-kW metal halide and sodium lights B73xMo17 hybrids were used for quantifying hormones. Leaves 1–4 displayed only juvenile traits, leaves 5–7 were transition leaves, with the remaining leaves displaying adult characteristics. 

Seedling treatment and scoring: 

Emerging seedlings (first leaf ) received 100 μl of 5 mM JA in 5% ethanol to the apical whorl (apical shoot meristem). Control treatments were application of the same volume of solvent. Treatments with JA occurred at 2-day intervals. Ear and tassel emergence were scored by counting leaves. 

Transcriptome analysis 

The RNAseq dataset of maize dry seed to fourth leaf emerging was obtained from Yu et al., 2015. This experiment was conducted using White Crystal, a maize cultivar that has been shown to have high similarity in transcript levels with the Mo17xB73 hybrid used. The RNAseq dataset of 9-day old B73 maize leaf 3 was obtained from NCBI GEO series GSE54274. Transcript expression values were converted to per row color scale, and color breaks were calculated using data quantiles. 

To obtain the heatmaps the pheatmaps package in R (version?) was used and genes were clustered using complete method and Euclidean distance. Candidate genes involved in juvenile JA signaling using  pBLAST with maize (taxid:4577) were found. Matches were scored using BLOSUM62 matrix with an e-value cutoff of 1e−5. 

Hormone measurement: 

The extraction protocol was derived from Pan, Welti, and Wang (2010). Hormones were extracted from 100 mg pooled fresh leaf tissue at desired developmental stage points using  2-propanol:H2O:HCl with dihydromethyljasmonate as an internal standard to adjust results for extraction efficiency. Tissue samples were harvested at the same time each day to account for circadian variations in hormone levels. Extracts were purified with dichloromethane, dried, and resuspended in methanol. Hormone levels in each extract were determined using ultra-high-pressure liquid chromatography–tandem mass spectrometry (Acquity H-Class UPLC—Waters TQD). 

 

Next steps: 

    Learn R and how to import, manage and use the data to replicate the graph in fig1. 

    Update github every week on any changes to the project 

    Expand on the methodology and versions used 

Github link: 

https://github.com/csgomez17/JA-levels-in-developmental-transition.git  
