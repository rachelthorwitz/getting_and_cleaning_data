# Code Book for Getting and Cleaning Data Course Project

This code book summarizes the resulting data found in tidydata.txt, which is available in the repository.

The dataset contains identifiers as well as measurements, each will be described separately.

##Identifiers

* subid - The ID of the test subject
* actid - The ID of the activity performed when the corresponding measurements were taken
* acttype - The label of activity performed when the corresponding measurements were taken, corresponds to the actid:


* Value 1: WALKING
* Value 2: WALKING_UPSTAIRS 
* Value 3: WALKING_DOWNSTAIRS
* Value 4: SITTING
* Value 5: STANDING
* Value 6: LAYING 

##Measurements

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
‘-XYZ’ is used to denote the directions of the signals

 * actid                                                     
 * subid                                                     
 * timeBodyAccelerometer-mean-XYZ                                                           
 * timeBodyAccelerometer-standard deviation-XYZ                               
 * timeGravityAccelerometer-mean-XYZ                                                     
 * timeGravityAccelerometer-standard deviation-XYZ                          
 * timeBodyAccelerometerJerk-mean-XYZ                                                    
 * timeBodyAccelerometerJerk-standard deviation-XYZ                     
 * timeBodygyroscope-mean-XYZ                                                                   
 * timeBodygyroscope-standard deviation-XYZ                                       
 * timeBodygyroscopeJerk-mean-XYZ                                                           
 * timeBodygyroscopeJerk-standard deviation-XYZ                              
 * timeBodyAccelerometermagnitude-mean                       
 * timeBodyAccelerometermagnitude-standard deviation         
 * timeGravityAccelerometermagnitude-mean                    
 * timeGravityAccelerometermagnitude-standard deviation      
 * timeBodyAccelerometerJerkmagnitude-mean                   
 * timeBodyAccelerometerJerkmagnitude-standard deviation     
 * timeBodygyroscopemagnitude-mean                           
 * timeBodygyroscopemagnitude-standard deviation             
 * timeBodygyroscopeJerkmagnitude-mean                       
 * timeBodygyroscopeJerkmagnitude-standard deviation        
 * frequencyBodyAccelerometer-mean-XYZ                                           
 * frequencyBodyAccelerometer-standard deviation-XYZ   
 * frequencyBodyAccelerometerJerk-mean-XYZ                              
 * frequencyBodyAccelerometerJerk-standard deviation-XYZ  
 * frequencyBodygyroscope-mean-XYZ                                                
 * frequencyBodygyroscope-standard deviation-XYZ   
 * frequencyBodyAccelerometermagnitude-mean                  
 * frequencyBodyAccelerometermagnitude-standard deviation    
 * frequencybodyAccelerometerJerkmagnitude-mean              
 * frequencybodyAccelerometerJerkmagnitude-standard deviation
 * frequencybodygyroscopemagnitude-mean                      
 * frequencybodygyroscopemagnitude-standard deviation        
 * frequencybodygyroscopeJerkmagnitude-mean                 
 * frequencybodygyroscopeJerkmagnitude-standard deviation   
 * acttype

###Notes

The original dataset that combined the test and training datasets contained 563 variables.  
Through the steps laid out in this project, only those measures containing the means and standard deviations were retained.  
The resulting tidy dataset contains 69 variables; 66 measurements and 3 identifiers.