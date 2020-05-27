
---
title: "Course3 week1 quiz1"
output: word_document
---

install.packages("curl")

#Download document 
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,destfile = "./house.csv", method = "curl")
#code book https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

house_data<-read.csv("house.csv", header = TRUE)
View(house_data)

colnames(house_data)
str(house_data)

more_than_1M<-sum(house_data$VAL>=24, na.rm = TRUE)
more_than_1M

#Download Natural gas doc
NG_URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(NG_URL,destfile = "./NG.xlsx", method = "curl")
download.date<-date()
download.date
library(xlsx)
NG_data<-read.xlsx("NG.xlsx",sheet = 1, rows = 18:23,cols = 7:15 )
View(NG_data)


#Read rows 18-23 and columns 7-15
dat<-NG_data[18:23,7:15]
View(dat)
sum(NG_data$Zip*NG_data$Ext,na.rm=T)

#XML
library(XML)
library(httr) #remove the s in https if any
doc_url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc_url2<-"http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
#doc_xml<-xmlTreeParse(sub("s", "", doc_url), useInternalNodes = T)
doc_xml<- xmlTreeParse(doc_url2, useInternalNodes = T)

rootNode<-xmlRoot(doc_xml)

xmlName(rootNode)
names(rootNode)
rootNode[[1]][[1]]
rootNode[[1]]
#How many restaurants have zipcode 21231
xpathSApply(rootNode,"//zipcode",xmlValue)
zipcodes<-xpathSApply(rootNode,"//zipcode",xmlValue)
zipcodes == 21231
table(zipcodes == 21231) [TRUE]
table(zipcodes == 21231)


#The American Community Survey
doc<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
View(doc)
download.file(doc,destfile = "./survey.csv", method = "curl")
survey_data<-read.csv("survey.csv", header = TRUE)
View(survey_data)

DT<-fread(doc)

install.packages("data.table")
library(data.table)
system.time(
    
    
##Week 2
install.packages("RMySQL")
