# packages ----------------------------------------------------------------
library(readr)
library(janitor)
library(fs)



# data folders ------------------------------------------------------------
# create data folder 
fs::dir_create("data/")
# create 'data/raw/' folder 
fs::dir_create("data/raw/")


# data sources ----------------------------------------------------------
# data urls 
balance_url <- "https://bit.ly/3hRzrKS"
brexit_url <- "https://bit.ly/3s2wqMx"
corbyn_url <- "https://bit.ly/35mgYRB"
pensions_url <- "https://bit.ly/2MNAvEp"

# data destination file paths 
balance_destfile <- "data/raw/Balance.csv"
brexit_destfile <- "data/raw/Brexit.csv"
corbyn_destfile <- "data/raw/Corbyn.csv"
pensions_destfile <- "data/raw/Pensions.csv"

# download data -------------------------------------------------------------
# download the files using the url and destfile
download.file(url = balance_url, destfile = balance_destfile)
download.file(url = brexit_url, destfile = brexit_destfile)
download.file(url = corbyn_url, destfile = corbyn_destfile)
download.file(url = pensions_url, destfile = pensions_destfile)

# import data ------------------------------------------------------------------
Balance <- readr::read_csv(balance_destfile)
Brexit <- readr::read_csv(brexit_destfile)
Corbyn <- readr::read_csv(corbyn_destfile)
Pensions <- readr::read_csv(pensions_destfile)



