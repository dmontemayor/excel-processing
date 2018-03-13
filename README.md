# excel-processing
Project specific code for processing excel files.

## Getting Started
This project is based on a [standard install of anaconda](https://docs.anaconda.com/anaconda/install/).

OK, the safest way is to create a virtual environment and install the required
packages there. You will run this script under this environment.

Create a virtual environment with conda.
Refer to this [usefull guide](https://uoa-eresearch.github.io/eresearch-cookbook/recipe/2014/11/20/conda/) and [this one](https://samrelton.wordpress.com/2015/07/02/rconda/) for more detailed tutorials.
```
$ conda create -n excelENV anaconda  
```
Proceed with adding all the new packages by pressing `y`.
Now, switch to this new environment.
```
$ source activate excelENV
```
Install R.
```
$ conda install -c r r
```
Again, proceed with adding all the new packages by pressing `y`.
Next, add required packages to your environment.
```
 conda install -c r r-rcurl r-jsonlite
```
Again proceed by pressing `y`.

Finally, launch R then set the working directory to the location of this script and execute the script.
```
$ R
```
```
> setwd("path/to/this/script")
> source("downloadAll.R")
```

*Alternatively you can just run the script from the terminal with
Rscript.*
```
$ Rscript path/to/this/script/downloadAll.R
```

When finished, deactivate the environment and end your session.
```
$ source deactivate excelENV
```
