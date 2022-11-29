pkgs <- c("alphavantager", "anytime", "bookdown", "brio", "crayon", "desc", 
"DiagrammeR", "DiagrammeRsvg", "distill", "dm", "downlit", "downloader", 
"duckdb", "flexdashboard", "forecast", "fracdiff", "ggfittext", 
"ggplot2", "gridExtra", "gt", "gtrendsR", "hrbrthemes", "igraph", 
"influenceR", "inspectdf", "ipcwswitch", "jcolors", "jsonlite", 
"kableExtra", "knitr", "listviewer", "lubridate", "MASS", "Matrix", 
"metathis", "NHANES", "nlme", "openxlsx", "padr", "PerformanceAnalytics", 
"plotly", "png", "processx", "Quandl", "raster", "RcppRoll", 
"readr", "rgdal", "riingo", "rsvg", "sass", "shades", "socviz", 
"starwarsdb", "survival", "terra", "tibbletime", "tidycensus", 
"tidyquant", "tidytuesdayR", "tidyverse", "tigris", "timechange", 
"timetk", "tsfeatures", "usdata", "V8", "vctrs", "viridis", "visNetwork", 
"vroom", "webshot", "writexl", "xaringanExtra", "XML", "zipcodeR"
)

# unique(sort(pkgs)) |> dput()
install.packages(pkgs)
# remotes::install_github("kjhealy/covdata@main")