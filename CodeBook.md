### Code Book
This code book summarizes the process of getting and cleaning data for this project including description of variables and data

1. Download the dataset from source described in `RawData.md`
2. Unzip data into your working directory
3. Run the R script `run_analysis.R`, which does the following:
    - Reading the data sets
    - Merging the data sets
    - Extracting measurements on mean and standard deviation
    - Add descriptive names to the activities
    - Labels the variable names
    - Creates an independent tidy dataset called `ProcessedData.txt`


Variable name          | Description                                    | Domain    | Instrument
-----------------------|------------------------------------------------|-----------|-----------
subject                | ID of the volunteer                            | n/a       | n/a
activity               | Activity name                                  | n/a       | n/a
tbodyacc               | Signal of body XYZ (1)                         | time      | Accelerometer
tgravityacc            | Signal of gravity XYZ                          | time      | Accelerometer
tbodyaccjerk           | Jerk signal of body XYZ                        | time      | Accelerometer
tbodygyro              | Signal of body XYZ                             | time      | Gyroscope
tbodygyrojerk          | Jerk signal of body XYZ                        | time      | Gyroscope
tbodyaccmag            | Magnitude of the body signal                   | time      | Accelerometer
tgravityaccmag         | Magnitude of the gravity signal                | time      | Accelerometer
tbodyaccjerkmag        | Jerk magnitude of the body signal              | time      | Accelerometer
tbodygyromag           | Magnitude of the body signal                   | time      | Gyroscope
tbodygyrojerkmag       | Jerk magnitude of the body signal              | time      | Gyroscope
fbodyacc               | transformation of tbodyacc XYZ                 | frequency | n/a
fbodyaccjerk           | transformation of tbodyaccjerk XYZ             | frequency | n/a
fbodygyro              | transformation of tbodygyro XYZ                | frequency | n/a
fbodyaccmag            | transformation of tbodyaccmag                  | frequency | n/a
fbodybodyaccjerkmag    | transformation of tbodyaccjerkmag              | frequency | n/a
fbodybodygyromag       | transformation of tbodygyromag                 | frequency | n/a
fbodybodygyrojerkmag   | transformation of tbodygyrojerkmag             | frequency | n/a

mean and standard deviation for each variable<br>
(1) XYZ is used to donate directions in x, y and z
