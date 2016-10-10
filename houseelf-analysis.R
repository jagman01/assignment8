#learning git
data1 <- read.csv("./data/houseelf_earlength_dna_data_1.csv",header = TRUE)
library(stringr) 
gc_content<- function(data1){
  data2 <- str_to_lower(data1)
  t<- str_length(data2)
  Gs <- str_count(data2, "g")
  Cs <- str_count(data2, "c")
  gc <-round((Gs + Cs) / t * 100, 2)
  return(gc)}
g_c <- gc_content(data1$dnaseq)
#7
source('classify_ear_size.R')
earlen <-get_size_class(data1$earlength)
new <- data.frame(data1$id,earlen, g_c )
write.csv(new, file = "file_with_earlen.csv")