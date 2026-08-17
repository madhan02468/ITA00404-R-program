# Install package if needed
# install.packages("reshape2")

library(reshape2)

# Load dataset
data(airquality)

# Remove missing values
aq <- na.omit(airquality)

# Melt the data
melted <- melt(aq, id.vars = "Month")

print(melted)

# Cast data
casted <- dcast(melted, Month ~ variable, mean)

print(casted)

# Monthly averages
monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data = aq,
  FUN = mean
)

print(monthly_avg)