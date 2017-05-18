# Downalod Data to use for the twitter workshop

# Packages that you need to setup your API in R and download twitter data
install.packages("twitteR")
install.packages("ROAuth")
install.packages("RCurl")
install.packages("RJSONIO")

# Packages for sentiment analyses and wordclouds
install.packages("RSentiment")
install.packages("tm")
install.packages("wordcloud")

# Genral R packages for plotting and manipulating data
install.packages("tidyr")
install.packages("dplyr")
install.packages("ggplot2")

# Require all packages
require("tm")
require("wordcloud")
require("twitteR")
require("RSentiment")
require("ROAuth")
require("RCurl")
require("RJSONIO")
require("tidyr")
require("dplyr")
require("ggplot2")

# Dowload 

api_key<- 'oSPLosuWUQt2sdbS52senzYxA'
api_secret<- "rRT36LxvFEkTdw0eTb4rh6sW5tnsZU0mph74dZAUShCyGjXRru"
token <- "3108157034-Knm58WMZvymPlAAC4jhxTm2keWVHDx7XN9zCs2a"
token_secret <- "YWHNeceXflljBNjUCW99hsrY1OPV8e7euWIFVTsrmjTmP"

setup_twitter_oauth(api_key, api_secret, token, token_secret)

# 
dir <- "~/Documents/varie/Rladies/twitter_workshop"

# Start search

# Search 1
twitter_rpdr9 <- searchTwitter("#rpdr9", n = 3000, lang= "en", since= "2017-03-01")
toDF_rupol <- twListToDF(twitter_rpdr9)
min(toDF_rupol$created)
# [1] "2017-04-26 13:22:29 UTC"
saveRDS(twitter_rpdr9, file.path(dir,"Data","twitter_rpdr9.rds"))

# Search 2
twitter_rpdr9_2 <- searchTwitter("#rpdr9", n = 3000, lang= "en", since = "2017-03-01")
toDF_rupol_2 <- twListToDF(twitter_rpdr9_2)
min(toDF_rupol_2$created)
# [1] "2017-04-26 13:22:29 UTC"
saveRDS(twitter_rpdr9_2, file.path(dir,"Data","twitter_rpdr9_2.rds"))

# Saskias tweet
twitter_rpdr9_3 <- searchTwitter("#rupaulsdragrace", n = 3000, lang= "en", since = "2017-03-01")
toDF_rupol_3 <- twListToDF(twitter_rpdr9_3)
min(toDF_rupol_3$created)
# [1] "2017-04-26 13:22:29 UTC"
saveRDS(twitter_rpdr9_3, file.path(dir,"Data","twitter_rupoldragrace.rds"))

# extract R code
library(knitr)
purl(input = file.path(dir,"twitteR.Rmd"), output = file.path(dir,"twitteR.R"))

git commit -m "Initial commit"
git remote add origin git@github.com:annaquaglieri16/R-Ladies.git
git push -u origin master
# git remote rm origin
