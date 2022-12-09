automagic::automagic('DOE_Book/')  # this is a nice package that searches a directory for all R and Rmd files and installs required packages

# Get dependent packages.  
library(here)
package.dependencies <- automagic::get_dependent_packages(here('DOE_Book'))

# Check to see if we have the required packages
if(sum(!(package.dependencies %in% installed.packages())) > 0){
  message(paste('Require the following packages:', paste(package.dependencies[!(package.dependencies %in% installed.packages())], collapse = ','), sep = ' '))
}else{
  setwd('./DOE_Book')
  message('All necessary packages installed.  Executing book build')
  bookdown::render_book('index.Rmd', 
                        output_dir = 'C:/Users/jking/Documents/GitHub/doe/html/_book/', 
                        new_session=TRUE)
}

