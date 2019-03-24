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
