

library(syuzhet)
library(twitteR)
library(rtweet)
library(tm)
library(dplyr)
library(plotly)
library(ggplot2)
library(RColorBrewer)
library(tidytext)
library(tidyverse)
library(stringr)
library(tidyr)
library(magrittr)
library(wordcloud)
library(wordcloud2)

CONSUMER_KEY <- "zVjxW3DritguyMEzypBKcJ3fT"
CONSUMER_SECRET <- "KH1WJQgp9UgJFyEpz0R1ctYAnoQPkOJCaZd08u0gUjt5e9oBdF"
ACCESS_TOKEN <-"1595389319673704448-Q61VFf4QSUEDydIS3rxhH8DZUDzkQV"
ACCESS_SECRET <- "Qxy4x9RC0duHTPGaV312p9NXXUh69TwBuyplZ7EjyEpq4"


setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

#Extract 10000 tweets from Twitter using twitteR package including retweets

includertwts <- searchTwitteR("One Piece",
                           n = 10000, 
                          lang = "en", 
                           since = "2022-11-20", 
                           until = "2022-11-27",
                           retryOnRateLimit = 120)

includertwts
includertwtsDF <- twListToDF(includertwts)


#Subset the retweets and the original tweets into a separate file
 rtwtsSub <- subset(includertwtsDF, isRetweet == "TRUE", select = c(text,screenName,created,
                                                             isRetweet))
 rtwtsSub

 origSub <- subset(includertwtsDF, isRetweet == "FALSE", select = c(text,screenName,created,
                                                              isRetweet))
 origSub
 
#Plot the retweets and the original tweets using bar graph in vertical manner.Include legends

 #RETWEETS
 rtwtsSub %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

rtwtsSub %<>% 
  mutate(Created_At_Round = created%>% 
           round(units = 'hours') %>% 
           as.POSIXct())

rtwtsSub %>% pull(created) %>% min()

rtwtsSub %>% pull(created) %>% max()

rtwtsPlot <- rtwtsSub %>% 
  dplyr::count(Created_At_Round) %>% 
  ggplot(mapping = aes(x = Created_At_Round, y = n, colour=n,fill = n)) +
  geom_bar(stat = "identity")+
  xlab(label = 'Date') +
  ylab(label = NULL) +
  theme(plot.title= element_text(face = "bold"))+
  guides(fill = FALSE)+
  ggtitle(label = "Number of Retweets per Hour")

rtwtsPlot %>% ggplotly()

#ORIGINAL TWEETS
origSub %>%  
  group_by(2) %>%  
  summarise(max = max(created), min = min(created))

origSub %<>% 
  mutate(Created_At_Round = created%>% 
           round(units = 'hours') %>% 
           as.POSIXct())

origSub %>% pull(created) %>% min()

origSub %>% pull(created) %>% max()

origPlot <- origSub %>% 
  dplyr::count(Created_At_Round) %>% 
  ggplot(mapping = aes(x = Created_At_Round, y = n, colour = n, fill = n)) +
  geom_bar( stat = "identity") +
  xlab(label = 'Date') +
  ylab(label = NULL) +
  theme(plot.title= element_text(face = "bold"))+
  guides(fill = FALSE)+
  ggtitle(label = "Number of Original tweets per Hour")

origPlot %>% ggplotly()
