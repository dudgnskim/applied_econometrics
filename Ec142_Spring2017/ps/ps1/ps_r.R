setwd('~/coding/ec142/Ec142_Spring2017/ps/ps1/')
ps <- read.table('ps1_data.txt', sep = "", header = TRUE)
head(ps)
class(ps)
ps$Cost..m./ps$FuelPrice
ols_data <- data.frame(y = log(ps$Cost..m./ps$FuelPrice),
                       cp_fp = ps$CapitalPrice/ps$FuelPrice,
                       log_output = log(ps$Output.mKWH.),
                       wage_fp = ps$Wage/ps$FuelPrice)
head(ols_data)
reg <- lm(y ~ ., data=ols_data)
summary(reg)
