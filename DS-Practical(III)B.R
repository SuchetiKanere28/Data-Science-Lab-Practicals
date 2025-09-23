students<-c("Amit","Neha","Rahul","Priya","Sneha","karan")
selected_Students<-sample(students,size=3,replace=FALSE)
print(selected_Students)

x<-c("apple","banana","cherry")
sample(x,size=5,replace=TRUE,prob=c(0.1,0.3,0.6))



grades <- c(45, 78, 90, 32, 66)
passed_indices <- which(grades > 60)
print(passed_indices)

survey <- c("Male", "Female", "Female", "Male", "Female")
gender_count <- table(survey)
print(gender_count)

data <- data.frame(
  name = c("John", "Jane", "Mike"),
  age = c(25, 30, 22),
  gender = c("M", "F", "M")
)
print("People older than 24:")
print(subset(data, age > 24))
print("Name and Age of people older than 24:")
print(subset(data, age > 24, select = name:age))
print("Males older than 24:")
print(subset(data, age > 24 & gender == "M"))
x <- c(10, 20, 30, 40)
print(subset(x, x > 25))

scores <- c(70, 40, 90)
result <- ifelse(scores >= 50, "Pass", "Fail")
print(result)

library(ggplot2)
data <- data.frame(
  Name = c("Amit","Neha","Rahul","Priya","Sneha"),
  Score = c(78, 85, 90, 66, 72)
)
ggplot(data, aes(x = Name, y = Score, fill = Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Student Scores",
       x = "Student",
       y = "Score")