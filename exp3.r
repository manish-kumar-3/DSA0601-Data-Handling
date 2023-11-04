attendance_data <- data.frame(
  Student = c("Student A", "Student B", "Student A", "Student C"),
  Date = as.Date(c("2023-08-01", "2023-08-01", "2023-08-02", "2023-08-02")),
  Status = c("Present", "Absent", "Present", "Present")
)
library(dplyr)

attendance_percentage <- attendance_data %>%
  group_by(Date) %>%
  summarize(AttendancePercentage = mean(Status == "Present") * 100)

print(attendance_percentage)

best_attendance <- attendance_data %>%
  group_by(Student) %>%
  summarize(AttendancePercentage = mean(Status == "Present") * 100) %>%
  top_n(1, wt = AttendancePercentage)

print(best_attendance)

overall_attendance_percentage <- mean(attendance_data$Status == "Present") * 100

print(paste("Overall Attendance Percentage: ", overall_attendance_percentage))

library(ggplot2)

attendance_counts <- attendance_data %>%
  group_by(Date, Status) %>%
  summarize(Count = n())

ggplot(attendance_counts, aes(x = "", y = Count, fill = Status)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  facet_wrap(~Date) +
  theme_void()
