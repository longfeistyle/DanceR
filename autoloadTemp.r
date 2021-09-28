# -------------------------------------------------------------------------

# Program Name    : autoloadTemp.r
# Purpose         : To generate R script template automatically
# Author          : Longfei
# Date            : 2021-09-14
# Program Version : V1.0
# R Version       : R4.4.1

# -------------------------------------------------------------------------
# Input Parameters



# -------------------------------------------------------------------------
# Output

# Description :


# -------------------------------------------------------------------------
# Revision History

# Revision Date       :
# Revised By          :
# Revision Description:

# -------------------------------------------------------------------------
#                           Begin Programs
# -------------------------------------------------------------------------

# 1.ENV Initialization ----------------------------------------------------

url <- paste0("http://mran.pharma.aventis.com/snapshots/", Sys.Date(), "/")
options(repos = url)  # Set R mirror site
# getOption("repos")

# 2.Core Programs ---------------------------------------------------------

autoloadTemp <- function(dir = NULL,
                         pgmname = NULL,
                         rversion = NULL,
                         pgmversion = NULL,
                         is.edit = T){

  if(is.null(dir)) dir <- getwd()

  if(is.null(pgmname) | nchar(pgmname) == 0){
    stop("parameters pgmname is required")
  }

  if(is.null(rversion)){
    rversion <- R.version.string
  }

  if(is.null(pgmversion)) pgmversion <- "V1.0"

  sink(paste0(dir,"/",pgmname))
  cat('# -------------------------------------------------------------------------\n')
  cat('\n')
  cat('# Program Name    :', pgmname, '\n')
  cat('# Purpose         :\n')
  cat('# Author          :\n')
  cat('# Date            :', as.character(Sys.Date()),'\n')
  cat('# Program Version :', pgmversion, '\n')
  cat('# R Version       :', rversion,'\n')
  cat('\n')
  cat('# -------------------------------------------------------------------------\n')
  cat('# Input Parameters \n')
  cat('\n')
  cat('\n')
  cat('\n')
  cat('# -------------------------------------------------------------------------\n')
  cat('# Output \n')
  cat('\n')
  cat('# Description : \n')
  cat('\n')
  cat('\n')
  cat('# -------------------------------------------------------------------------\n')
  cat('# Revision History \n')
  cat('# Revision Date       : \n')
  cat('# Revised By          : \n')
  cat('# Revision Description: \n')
  cat('# -------------------------------------------------------------------------\n')
  cat('#                           Begin Programs \n')
  cat('# -------------------------------------------------------------------------\n')
  cat('\n')
  cat('\n')
  cat('# 1.ENV Initialization ----------------------------------------------------\n')
  cat('\n')
  cat('url <- paste0("http://mran.pharma.aventis.com/snapshots/", , "/") \n')
  cat('options(repos = url)  # Set R mirror site \n')
  cat('# getOption("repos") \n')
  cat('\n')
  cat('setwd() # Set workspace \n')
  cat('\n')
  cat('\n')
  cat('\n')
  cat('# 2.Core Programs ---------------------------------------------------------\n')
  cat('\n')
  cat('\n')
  cat('\n')
  cat('# -------------------------------------------------------------------------\n')
  cat('#                           Programs End \n')
  cat('# -------------------------------------------------------------------------\n')
  sink()

  if(is.edit == T){
    file.edit(paste0(dir,"/",pgmname))
  }
}

# -------------------------------------------------------------------------
#                           Programs End
# -------------------------------------------------------------------------


