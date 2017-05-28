
STEPS

The script performs the following :-

1.) It downloads the provided data set using the download.file() function.

2.) It then unzips the data set in the working directory using the unzip() function.

3.) It then reads the activity labels and features in "activityLevel" and "features" variables from activity_labels.txt and features.txt files.

4.) It the extracts the required mean and standard deviation details.

5.) It then imports the train and test data of the required features.

6.) It then merges both the data sets using rbind() function.

7.) It then uses the melt() and dcast() function to find the average of each variable for each activity and each subject.

8.) It then uses the write.table() function to write the result to tidy.txt file.


IDENTIFIERS:-

     "subject"                      "activity"
     
     
MEASURED VALUES:-


     "tbodyaccmeanx"                "tbodyaccmeany"               
     "tbodyaccmeanz"                "tbodyaccstdx"                
     "tbodyaccstdy"                 "tbodyaccstdz"                
     "tgravityaccmeanx"             "tgravityaccmeany"            
     "tgravityaccmeanz"             "tgravityaccstdx"             
     "tgravityaccstdy"              "tgravityaccstdz"             
     "tbodyaccjerkmeanx"            "tbodyaccjerkmeany"           
     "tbodyaccjerkmeanz"            "tbodyaccjerkstdx"            
     "tbodyaccjerkstdy"             "tbodyaccjerkstdz"            
     "tbodygyromeanx"               "tbodygyromeany"              
     "tbodygyromeanz"               "tbodygyrostdx"               
     "tbodygyrostdy"                "tbodygyrostdz"               
     "tbodygyrojerkmeanx"           "tbodygyrojerkmeany"          
     "tbodygyrojerkmeanz"           "tbodygyrojerkstdx"           
     "tbodygyrojerkstdy"            "tbodygyrojerkstdz"           
     "tbodyaccmagmean"              "tbodyaccmagstd"              
     "tgravityaccmagmean"           "tgravityaccmagstd"           
     "tbodyaccjerkmagmean"          "tbodyaccjerkmagstd"          
     "tbodygyromagmean"             "tbodygyromagstd"             
     "tbodygyrojerkmagmean"         "tbodygyrojerkmagstd"         
     "fbodyaccmeanx"                "fbodyaccmeany"               
     "fbodyaccmeanz"                "fbodyaccstdx"                
     "fbodyaccstdy"                 "fbodyaccstdz"                
     "fbodyaccmeanfreqx"            "fbodyaccmeanfreqy"           
     "fbodyaccmeanfreqz"            "fbodyaccjerkmeanx"           
     "fbodyaccjerkmeany"            "fbodyaccjerkmeanz"           
     "fbodyaccjerkstdx"             "fbodyaccjerkstdy"            
     "fbodyaccjerkstdz"             "fbodyaccjerkmeanfreqx"       
     "fbodyaccjerkmeanfreqy"        "fbodyaccjerkmeanfreqz"       
     "fbodygyromeanx"               "fbodygyromeany"              
     "fbodygyromeanz"               "fbodygyrostdx"               
     "fbodygyrostdy"                "fbodygyrostdz"               
     "fbodygyromeanfreqx"           "fbodygyromeanfreqy"          
     "fbodygyromeanfreqz"           "fbodyaccmagmean"             
     "fbodyaccmagstd"               "fbodyaccmagmeanfreq"         
     "fbodybodyaccjerkmagmean"      "fbodybodyaccjerkmagstd"      
     "fbodybodyaccjerkmagmeanfreq"  "fbodybodygyromagmean"        
     "fbodybodygyromagstd"          "fbodybodygyromagmeanfreq"    
     "fbodybodygyrojerkmagmean"     "fbodybodygyrojerkmagstd"     
     "fbodybodygyrojerkmagmeanfreq"
