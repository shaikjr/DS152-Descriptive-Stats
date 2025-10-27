# DS152 – Descriptive Statistics Assignment
**Student Name:** MAHABOOB SHAIK  
**Student ID:** 24164385  
**Course:** MSc Programme  
**Subject:** Descriptive Statistics  
**Dataset:** Greece Earthquakes (ds152)

---

## 📌 Overview
This assignment focuses on applying descriptive statistical methods to analyze the Greece Earthquakes dataset. The dataset contains recorded earthquake events in Greece, including magnitude, depth, location, and date-time information. The objective is to summarize, interpret, and visualize the key characteristics of the dataset.

---

## 🗂 Dataset Description
| Variable | Description |
|---------|-------------|
| `DateTime` | Date and time of the earthquake event |
| `Latitude` | Geographic latitude of the earthquake epicenter |
| `Longitude` | Geographic longitude of the epicenter |
| `Depth` | Depth of earthquake (in km) |
| `Magnitude` | Earthquake magnitude on Richter scale |

---

## 🎯 Objectives of the Assignment
- Organize and clean the dataset where required.
- Compute descriptive statistics:
  - Mean, Median, Mode, Range
  - Variance, Standard Deviation
  - Coefficient of Variation
- Construct appropriate visualizations:
  - Histograms
  - Boxplots
  - Scatter plots
- Summarize findings and interpret observed patterns.

---

## 🔧 Tools & Software Used
- **RStudio / R Programming**
- `dplyr`, `ggplot2`, `readr` packages
- Microsoft Excel (for initial inspection)
- Markdown for documentation

---

## 📊 Example Code Snippet (R)
```r
# Load dataset
eq_data <- read.csv("greece_earthquakes.csv")

# Summary statistics for Magnitude
summary(eq_data$Magnitude)

# Histogram
hist(eq_data$Magnitude, main="Earthquake Magnitude Distribution", xlab="Magnitude", col="lightblue")

# Scatter Plot (Magnitude vs Depth)
plot(eq_data$Depth, eq_data$Magnitude, main="Magnitude vs Depth", xlab="Depth (km)", ylab="Magnitude")
```

---

## 📝 Interpretation Notes
- Higher magnitudes generally indicate stronger earthquakes.
- Depth plays a key role in surface-level impact.
- Visual patterns help identify frequency distribution and central tendency.
- Outliers can highlight rare, high-impact earthquakes.

---

## ✅ Conclusion
This assignment demonstrates how descriptive statistics help summarize and understand real-world scientific data. The Greece Earthquakes dataset provides insights into the magnitude and depth variations across seismic events, supporting further inference and analytical modeling in geoscience and risk analysis studies.

---

## © Author
**Student ID:** 24164385  
**Name:** MAHABOOB SHAIK
