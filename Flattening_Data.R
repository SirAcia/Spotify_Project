#reading data 

library(rjson)

raw2017_2019 <- fromJSON(file = "/Users/zachery/Spotify_Project/Zachery Spotify Extended Streaming History/Streaming_History_Audio_2017-2019_0.json")

raw_2019_1 <- fromJSON(file = "/Users/zachery/Spotify_Project/Zachery Spotify Extended Streaming History/Streaming_History_Audio_2019_1.json")

data2017_2019 <- data.frame(t(sapply(raw2017_2019,c)))

data2017_2019 <- do.call(rbind, lapply(raw2017_2019, as.data.frame, stringsAsFactors = FALSE))

data2019_1 <- data.frame(t(sapply(raw_2019_1,c)))

test_20190 <- raw2017_2019 <- fromJSON(file = "/Users/zachery/Spotify_Project/Zachery Spotify 
                         Extended Streaming History/Streaming_History_Audio_2019_1.json")
