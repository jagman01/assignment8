#learning git
data1 <- read.csv("./data/houseelf_earlength_dna_data_1.csv",header = FALSE, sep = "", quote = "")
library(stringr) 
gc_content<- function(data1){
  t<- str_length(data1)
  Gs <- str_count(data1, "G")
  Cs <- str_count(data1, "C")
  gc <-round((Gs + Cs) / t * 100, 2)
  return(gc)}
for (i in 2:length(data1$V1)) {print(gc_content(data1$V1)[i])
}