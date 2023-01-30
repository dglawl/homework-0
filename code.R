library(tidyverse)
data("iris")

sepL <- iris %>% select("Species", "Sepal.Length")
#Average sepal length for Setosa
setSepLAvg <-  mean(sepalL$Sepal.Length[1:50])
setSE <- sd(sepalL$Sepal.Length[1:50])/sqrt(50)
#95% confidence interval
ci <- c(qnorm(0.025, setSepLAvg, setSE), qnorm(0.975, setSepLAvg, setSE))
