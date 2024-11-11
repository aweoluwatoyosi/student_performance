library(readr)
student <- read_csv("C:/Users/12179/Downloads/StudentPerformanceFactors.csv")
View(student)

sum(is.na(student))

student2 <- na.omit(student)

sum(is.na(student2))

library(ggplot2)

# Plot density to see data distribution
studen <- ggplot(student2, aes(x = Exam_Score)) +
  geom_density(fill = "#00FF00", alpha = 0.5) +
  labs(title = "Density of Exam Scores", x = "Exam_Score", y = "Density") +
  theme_minimal()

studen

stuhist <- ggplot(student2, aes(x = Exam_Score)) +
  geom_histogram(binwidth = 1, fill = "#00FF00", color = "black") +
  coord_cartesian(xlim = c(58, 80)) +
  labs(title = "Distribution of Scores", x = "Exam_Score", y = "Frequency") +
  theme_minimal()

stuhist

# Example with ggplot2 and geom_bin2d
stugeom <- ggplot(student2, aes(x = Exam_Score, y = Attendance)) +
  geom_bin2d(bins = 30) +  # Adjust `bins` as needed for granularity
  scale_fill_gradient(low = "lightblue", high = "darkblue") +  # Color scale for density
  labs(title = "2D Histogram of Exam Score vs Attendance", x = "Exam_Score", y = "Attendance") +
  theme_minimal()

stugeom

library(hexbin)

stuhex <- ggplot(student2, aes(x = Exam_Score, y = Attendance)) +
  geom_hex(bins = 30) +  # Adjust bins as needed
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Hexbin Plot of Exam Score vs Attendance", x = "Exam_Score", y = "Attendance") +
  theme_minimal()

stuhex


stufacet <- ggplot(student2, aes(x = Exam_Score)) + 
  geom_histogram(binwidth = 2, fill = "lightblue") + 
  facet_wrap(~ Parental_Involvement) + 
  labs(title = "Faceted Histogram of Value by Category")

stufacet


# Convert the categorical variable to a factor
student2$Parental_Involvement <- as.factor(student2$Parental_Involvement)
student2$Access_to_Resources <- as.factor(student2$Access_to_Resources)
student2$Extracurricular_Activities <- as.factor(student2$Extracurricular_Activities)
student2$Motivation_Level <- as.factor(student2$Motivation_Level)
student2$Internet_Access <- as.factor(student2$Internet_Access)
student2$Family_Income <- as.factor(student2$Family_Income)
student2$Teacher_Quality <- as.factor(student2$Teacher_Quality)
student2$School_Type <- as.factor(student2$School_Type)
student2$Peer_Influence <- as.factor(student2$Peer_Influence)
student2$Learning_Disabilities <- as.factor(student2$Learning_Disabilities)
student2$Parental_Education_Level <- as.factor(student2$Parental_Education_Level)
student2$Distance_from_Home <- as.factor(student2$Distance_from_Home)
student2$Gender <- as.factor(student2$Gender)


# Fit a linear model with both continuous and categorical predictors
model <- lm(Exam_Score ~ . , data = student2)


# Summary of the model
summary(model)

