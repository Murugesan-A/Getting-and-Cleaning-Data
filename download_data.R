#if output file is already there, delete it!
if(file.exists("tidydata.txt")){file.remove("tidydata.txt")}

#Create data folder
if(!file.exists("./data")){dir.create("./data")}

#Download the zip file from th remote server.
if(!file.exists("./data/DS.zip")){
        
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="./data/DS.zip")
        unzip(zipfile="./data/DS.zip",exdir="./data")

}
