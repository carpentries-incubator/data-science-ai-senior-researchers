library(ggplot2)

data <- data.frame(Height = c(90,78,73,69,86,91,65,60,95,90),
                   Weight = c(50,49,32,38,45,52,34,27,59,43))

intercept <- 10.09
slope <- 1.65064
data$fitted <- intercept + slope * data$Weight
data$mean <- mean(data$Height)
data$fitres <- (data$Height - data$fitted)^2
data$meanres <- (data$Height - data$mean)^2
data
fitmse <- (sum(data$fitres))/10 
meanmse <- (sum(data$mean))/10




fitted <- ggplot(data, aes(x = Weight, y = Height)) +
  geom_abline(slope = slope, intercept = intercept, color = "blue") +
  geom_segment(aes(xend = Weight, yend = fitted, color = "resid")) +
  geom_point() +
  scale_color_manual(values = c(resid = "darkred"), labels = c(resid = "residuals")) +
  ggtitle("Fitted") +
  annotate("text", x = 55, y = 60, label = paste("MSE =",round(fitmse,2)),family="mono")

mean <- ggplot(data, aes(x = Weight, y = Height)) +
  geom_abline(slope = 0, intercept = 80, color = "green") +
  geom_segment(aes(xend = Weight, yend = mean, color = "resid")) +
  geom_point() +
  scale_color_manual(values = c(resid = "darkred"), labels = c(resid = "residuals")) +
  ggtitle("Mean") +
  ylim(60,110) +
  annotate("text", x = 55, y = 63, label = paste("MSE =",round(meanmse,2)),family="mono")

gridExtra::grid.arrange(fitted,mean)


setwd("/Users/alacey/Documents/Dev/data-science-ai-senior-researchers/fig/")
png("mse.png", units="in", width=5, height=5, res=300)
gridExtra::grid.arrange(fitted,mean)
dev.off()

