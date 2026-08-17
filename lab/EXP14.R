# Load dataset
data(ChickWeight)

# Display first few records
head(ChickWeight)

# Sort by Weight
sorted_data <- ChickWeight[order(ChickWeight$Weight), ]

print(sorted_data)

# Install package if needed
# install.packages("reshape2")

library(reshape2)

# Melt dataset
melted <- melt(
  ChickWeight,
  id.vars = c("Chick", "Time", "Diet")
)

print(head(melted))

# Cast by Diet
casted <- dcast(
  melted,
  Diet ~ variable,
  mean
)

print(casted)