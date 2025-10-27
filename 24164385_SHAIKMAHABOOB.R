# Q1: Load required libraries and inspect data
library(readr)
library(readxl)
library(tibble)

df <- read_csv("Earthquakes_v3.csv")

print(dim(df))

print(colnames(df))

print(head(df, 5))

glimpse(df)

print(colSums(is.na(df)))

nrow(df)

summary(df)

print(glimpse(df))

sd(df$DATETIME)

# Q2: Display first 5 rows of 5 selected columns
selected_cols <- c("DATETIME",
                   "LAT",
                   "LONG",
                   "DEPTH",
                   "MAGNITUDE")
df_subset <- df[1:5, selected_cols]
print(as_tibble(df_subset))

# Q3: Identify what each row represents
total_rows <- nrow(df)
unique_datetime_count <- length(unique(df$DATETIME))
if (unique_datetime_count <= total_rows) {
  message("Each row represents a single recorded earthquake event.")
}

# Q4: Descriptive statistics for key numeric columns
numeric_cols <- c("LAT", "LONG", "DEPTH", "MAGNITUDE")
summary(df[, numeric_cols])
mean_depth <- mean(df$DEPTH, na.rm = TRUE)
median_depth <- median(df$DEPTH, na.rm = TRUE)
range_depth <- range(df$DEPTH, na.rm = TRUE)
mean_magnitude <- mean(df$MAGNITUDE, na.rm = TRUE)
median_magnitude <- median(df$MAGNITUDE, na.rm = TRUE)
range_magnitude <- range(df$MAGNITUDE, na.rm = TRUE)

# Q5: Explore data to find something interesting/surprising
magnitude_bins <- cut(df$MAGNITUDE,
                      breaks = c(0, 1.9, 2.9, 3.9, 4.9, 5.9, 6.9, Inf),
                      labels = c("<2.0", "2.0-2.9", "3.0-3.9", "4.0-4.9",
                                 "5.0-5.9", "6.0-6.9", "7.0+"),
                      right = TRUE,
                      include.lowest = TRUE)

print(table(magnitude_bins, useNA = "ifany"))

# Q6 & Q7: Create a simple Base R graph (Histogram of Magnitudes)
mean_magnitude <- mean(Earthquakes_data$MAGNITUDE, na.rm = TRUE)
mag_bins <- seq(0, 7, by = 0.5)
hist(Earthquakes_data$MAGNITUDE,
     breaks = mag_bins,
     main = "Distribution of Earthquake Magnitudes",
     xlab = "Magnitude (Richter Scale)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

# Q8: Find the record with the maximum value for a key column
df_max_mag <- df[which.max(df$MAGNITUDE),
                 c("DATETIME", "LAT", "LONG", "DEPTH", "MAGNITUDE")]
print(df_max_mag)

