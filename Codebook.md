# Code Book for Getting and Cleaning Data Course Project

This code book summarizes the resulting data found in tidydata.txt, which is available in the repository.

The dataset contains identifiers as well as measurements, each will be described separately.

##Identifiers

* subid - The ID of the test subject
* actid - The ID of the activity performed when the corresponding measurements were taken
* acttype - The type of activity performed when the corresponding measurements were taken, corresponds to the actid:

** Value 1: WALKING
** Value 2: WALKING_UPSTAIRS 
** Value 3: WALKING_DOWNSTAIRS
** Value 4: SITTING
** Value 5: STANDING
** Value 6: LAYING 

##Measurements

* timeBodyAccelerometermagnitude-mean
* timeGravityAccelerometermagnitude-mean     
* timeBodyAccelerometerJerkmagnitude-mean      
* timeBodygyroscopemagnitude-mean             
* timeBodygyroscopeJerkmagnitude-mean        
* frequencyBodyAccelerometermagnitude-mean    
* frequencybodyAccelerometerJerkmagnitude-mean
* frequencybodygyroscopemagnitude-mean       
* frequencybodygyroscopeJerkmagnitude-mean

###Notes

The original dataset that combined the test and training datasets contained 563 variables.  
Through the steps laid out in this project, first only those measures containing the means and standard deviations were retained.  
When creating the tidydata.txt file, the measures with standard deviations were also removed, resulting in the final dataset with 12 variables.