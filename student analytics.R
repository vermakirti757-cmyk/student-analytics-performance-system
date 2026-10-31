# Student Performance Analysis

student_data <- data.frame(
  Student_ID = 1:30,
  Study_Hours = c(2,4,3,5,6,2,7,4,5,3,8,6,4,7,5,
                  3,9,6,2,5,7,4,8,6,3,9,5,7,4,8),
  Attendance = c(65,78,72,85,90,60,95,80,88,70,96,91,76,94,86,
                 68,98,89,62,84,93,75,97,92,69,99,87,90,79,95),
  Assignment_Score = c(55,68,62,75,82,50,88,70,78,60,92,85,65,90,80,
                       58,95,84,52,76,87,64,93,86,57,96,79,89,71,91),
  Final_Score = c(58,72,65,80,85,55,92,74,82,63,95,88,70,93,84,
                  61,97,87,56,79,90,68,94,89,60,98,83,91,75,93)
)

# Dataset dekhne ke liye
print(student_data)

# Summary
summary(student_data)

# Statistical Analysis

mean(student_data$Final_Score)
max(student_data$Final_Score)
min(student_data$Final_Score)

mean(student_data$Attendance)
mean(student_data$Study_Hours)
mean(student_data$Assignment_Score)
# Graph 1: Study Hours vs Final Score

plot(student_data$Study_Hours,
     student_data$Final_Score,
     main = "Study Hours vs Final Score",
     xlab = "Study Hours",
     ylab = "Final Score",
     pch = 19)
# ALL GRAPHS IN ONE WINDOW

par(mfrow = c(2, 2))

# Graph 1: Study Hours vs Final Score
plot(student_data$Study_Hours,
     student_data$Final_Score,
     main = "Study Hours vs Final Score",
     xlab = "Study Hours",
     ylab = "Final Score",
     pch = 19)

# Graph 2: Attendance vs Final Score
plot(student_data$Attendance,
     student_data$Final_Score,
     main = "Attendance vs Final Score",
     xlab = "Attendance (%)",
     ylab = "Final Score",
     pch = 19)

# Graph 3: Final Score Distribution
hist(student_data$Final_Score,
     main = "Distribution of Final Scores",
     xlab = "Final Score",
     ylab = "Number of Students")

# Reset graph layout
par(mfrow = c(1, 1))

# Correlation Analysis

study_correlation <- cor(
  student_data$Study_Hours,
  student_data$Final_Score
)

attendance_correlation <- cor(
  student_data$Attendance,
  student_data$Final_Score
)

study_correlation
attendance_correlation