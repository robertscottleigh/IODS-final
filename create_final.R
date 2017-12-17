#Data wrangling for final proect for IODS 2017. 
#Robert Leigh, robert.leigh@helsinki.fi
#18 December 2017


#The aim of this final project is to analyze the Boston dataset using principal component 
#analysis and regression.

#load the MASS library which contains the dataset.
library(MASS) 

#load the dplyr library, which is very useful for data wrangling.
library(dplyr)  

#load the Boston dataset using data()
data(Boston) 

#Check the dimensions of the Boston dataset. The Boston dataset consists of 14 
#numerical and integer variables. There are 506 observations. which represent census areas.
dim(Boston)   
str(Boston)


#Scale the boston dataset so that the mean is zero. By default, scaling a dataset converts it
#to a matrix. 
boston_scaled <- scale(Boston) 

#Convert boston_sceld to a dataframe. This allows it to be visualized by GGpairs. 
as.data.frame(boston_scaled) -> boston_scaled 

#Write the scaled dataset to the hard drive. 
write.table(boston_scaled, file = "C:/HY-Data/LEIGH/course material/introduction_to_open_data_science/IODS-final/final.txt", sep=",")

