library(tidyverse)
flist = list.files(path = "C:\\Users\\mksal\\OneDrive\\Documents\\DANL 310\\mcs18.github.io\\CollegeScorecard_Raw_Data_04262022")

df_flist = as.data.frame(flist)

df_flist = df_flist %>%
  filter(str_detect(flist, "MERGED") == T)

for(i in 1:nrow(df_flist)) {
  fname = paste0("C:\\Users\\mksal\\OneDrive\\Documents\\DANL 310\\mcs18.github.io\\CollegeScorecard_Raw_Data_04262022\\", df_flist[i,1])
  data = read.csv(fname)
  fname = str_replace(df_flist[i,1], ".csv", "")
  assign(paste0(fname), data)   # Combining assign & paste0
}
