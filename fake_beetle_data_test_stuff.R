


### Beetle dataset creation, plotting and saving demo
# Jessica Dardignac
# January 23, 2024
# Base R

### Save this code now!

## create dataset

# Set a seed for reproducibility
set.seed(123)

# Create a vector of beetle names
beetle_names <- c("Ladybug", "Stag Beetle", "Firefly Beetle", "Dung Beetle", "Jewel Beetle")

# Create a vector of beetle lengths
beetle_lengths <- runif(20, 1, 5) # random lengths between 1 and 5


# Create vector of beetle color
beetle_colors <- sample (c("Red", "Black", "Green", "Yellow", "Blue"), 20, replace = TRUE)

# Create the random betel dataframe
beetle_df <- data.frame (Name = sample (beetle_names, 20, replace = TRUE), Length = beetle_lengths, Colors = beetle_colors)

# save this fake data to data directory go slow!
write.csv(beetle_df, file = "data/fake_beetle_data.csv")


### Make quick

length_chart <- barplot (height = beetle_df$Length, names = beetle_df$Name)

