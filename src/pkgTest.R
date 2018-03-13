# Routine setup function to check package requirements.
# Will not re-install if package is already installed.
# Author: Daniel Montemayor, UTHSCSA 2018

# will check if package is already installed
pkgTest <- function(x)
  {
    if (!require(x,character.only = TRUE))
    {
      install.packages(x,dep=TRUE)
        if(!require(x,character.only = TRUE)) stop("Package not found")
    }
  }
