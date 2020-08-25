setwd("C:/Users/ruban/Desktop/wifi positioning/final/shithi")
dummy <- read.csv("measure1_smartphone_wifi_azwad.csv")

dummy <- dummy[sample(1:nrow(dummy)), ]
dummy_zeros <- dummy[dummy$GRP==0, ]
dummy_ones <- dummy[dummy$GRP==1, ]
dummy_twos <- dummy[dummy$GRP==2, ]
dummy_threes <- dummy[dummy$GRP==3, ]
dummy_fours <- dummy[dummy$GRP==4, ]
dummy_fives <- dummy[dummy$GRP==5, ]

test_zeros <- dummy_zeros[1:12, ]
test_ones <- dummy_ones[1:7, ]
test_twos <- dummy_twos[1:16, ]
test_threes <- dummy_threes[1:10, ]
test_fours <- dummy_fours[1:4, ]
test_fives <- dummy_fives[1:14, ]
test <- rbind(test_zeros, test_ones, test_twos, test_threes, test_fours, test_fives)

train_zeros <- dummy_zeros[13:62, ]
train_ones <- dummy_ones[8:36, ]
train_twos <- dummy_twos[17:84, ]
train_threes <- dummy_threes[11:50, ]
train_fours <- dummy_fours[5:22, ]
train_fives <- dummy_fives[15:70, ]
train <- rbind(train_zeros, train_ones, train_twos, train_threes, train_fours, train_fives)

train <- train[sample(1:nrow(train)), ]

dummy2 <- rbind(train, test)
write.csv(dummy2, "wifi_data_all.csv", row.names=FALSE)

