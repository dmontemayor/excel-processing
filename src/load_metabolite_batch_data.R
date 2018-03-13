# This script is tailor made based on Manjula Darshi's specifications.
# It will parse the original metabolite batch data contained in an xls sheet
# provided by the user and return the data as dataframe called 'rawData'.
# Author Daniel Montemayor, UTHSCSA 2018

#use pkgTest to check requirements
source(pkgTest.R)

#install required packages if necessary
pkgTest("xlsx")
#pkgTest("RCurl")
#pkgTest("jsonlite")

# Load packages
library("xlsx")
#library(RCurl)
#library(jsonlite)

# Overview message
message("Welcome!")

# prompt the user for the name of the input file.
inputfilename <- readline(prompt="Enter path to input file: ")


# Use Curl to download file
#download.file("https://www.dropbox.com/s/zwwk7xe1jexbb6i/Copy%20of%20170530_JDRF_Urine_Peptide_Protein_Data_Final.xlsx?dl=0","RawData.xlsx",method="curl")

# Read excel file
#rawData <- read.xlsx("RawData.xlsx",sheetIndex=1,header=TRUE)
wb <- loadWorkBook(inputfilename)
sheets <- getSheets(wb)

# make sure data directory exists
#if(!file.exists("data")){dir.create("data")}

# check for previously downloaded data
#if(!file.exists("data/rawData.csv")){downloadData()}
