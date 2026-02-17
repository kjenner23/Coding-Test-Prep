

# simulated labor data

df <- data.frame(
  id = c(1, 2, 3, 4, 4, 5, 6),
  earnings = c(600, 800, 500, 700, 700, NA, 900),
  hours = c(40, 40, 25, 35, 35, 40, 45),
  female = c(1, 0, 1, 0, 0, 1, 0),
  education = c(12, 16, 14, 12, 12, 13, 18)
)

df <- df[!duplicated(df$id), ]

df <- df[!is.na(df$earnings), ]

df$hourly_wage <- df$earnings / df$hours

model <- lm(hourly_wage ~ female + education, data = df)
print(summary(model))

png("education_wage_plot.png")

plot(df$education, df$hourly_wage,
main = "Hourly Wage vs Education",
xlab = "Education (years)",
ylab = "Hourly Wage")

