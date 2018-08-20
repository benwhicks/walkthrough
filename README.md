# Walkthrough Analysis Project

Contains code for generating VL walkthrough reports. Ignores all csv, doc, docx, pdf and jpeg files to keep data private. 

## Key files and folders

Data is entered in something like the *walkthrough data entry* spreadsheet.

Data is stored in *All.Walkthroughs.csv* file, inside data folder. Easiest to manage all data in single csv use Excel rather than R. Sample data set is available called *Sample.All.Walkthroughs.csv*

*reports* folder is for sending reports to. Only *Sample.Report.pdf* is added to git.

## Code book

Observations are largely 0 / 1 for seen / not seen. Code generally does not tolerate missing data entries. More details are available in the *Sample Report*.
