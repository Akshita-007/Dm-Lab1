mydata <- read.csv("/home/kiran/TAXI_sample_data_senml.csv",header = TRUE,sep=",")
print(mydata)
write.csv(mydata,"/home/kiran/data_senml.csv",quote = T,append = F,row.names = T,col.names = T)
