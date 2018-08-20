# Scripts for running the walkthrough analysis

# Rendering a report

# Must read in data called 'wtd' for all data and 'wtd_today' for lastest walkthrough data
# Text of 'wtDate' also needed
# Can then call knitr

col_names <- c('period','room','year.level','number.of.students','lesson.time','direct.instruction','discussing','reading..viewing','groupwork','independent.work','LI.visible','SC.visible','learning.understanding','success.understanding','date','learning.process')
wtd <- read.csv("data/All.Walkthroughs.csv") # change this to suit
wtDate <- 'August 2018' # change to suit
wtd$date <- as.Date(wtd$date)
names(wtd) <- col_names
wtd_today <- wtd[wtd$date == max(wtd$date),] # selecting latest date as today's WT

rmarkdown::render('Walkthrough - Cumulative Analysis Template.Rmd', 
                  output_file = 'Walkthrough Analysis - 2018 Term 3.pdf',
                  output_dir = 'reports')