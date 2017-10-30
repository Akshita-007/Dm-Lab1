#save and load R data
a<-1:10
b<-letters[1:5]
save(a, b, file="./mydatafile.Rdata") #Saved in home directory
rm(a,b)
load(file = "./mydatafile.Rdata")
#use this instead of above line as it opens a dialog box to select the data file, much simpler :P
load(file.choose())
print(a)
print(b)
a1<-1:8
saveRDS(a1, file = "./mydatafile2.rds")
a2<-readRDS(file="./mydatafile2.rds")
print(a2)
var1<-sample(4)
print(var1)
var2<-var1/10
var3<-c("Affan", "should", "be", "CR")
print(var3)
df1<-data.frame(var1,var2,var3)
names(df1)<-c("Var.Int", "Var.Fra", "Var.Char")
#print(df1)
write.csv(df1,"./mydatafile3.csv", row.names = FALSE)
df2<-read.csv("./mydatafile3.csv")
print(df2)
