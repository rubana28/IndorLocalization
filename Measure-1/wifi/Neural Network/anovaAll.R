setwd("C:/Users/ruban/Desktop/wifi positioning/final/shithi")
dummy <- read.csv("measure1_smartphone_wifi_azwad.csv")

dummy_grp0 <- dummy$WAP_027[dummy$GRP==0]
dummy_grp1 <- dummy$WAP_027[dummy$GRP==1]
dummy_grp2 <- dummy$WAP_027[dummy$GRP==2]
dummy_grp3 <- dummy$WAP_027[dummy$GRP==3]
dummy_grp4 <- dummy$WAP_027[dummy$GRP==4]
dummy_grp5 <- dummy$WAP_027[dummy$GRP==5]

combined_grps <- data.frame(cbind(dummy_grp0, dummy_grp1, dummy_grp2, dummy_grp3, dummy_grp4, dummy_grp5))
stacked_grps <- stack(combined_grps)
anovaALL_results <- aov(values ~ ind, data = stacked_grps) 
summary(anovaALL_results)

