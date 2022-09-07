# internship first task

DATASET=read.csv("student_scores.csv")
library(ggplot2)

# plotting the distribution of scores:

library(ggplot2)
ggplot(data = DATASET, aes(x = Hours, y =Scores)) +
  geom_point() +
  labs(x = "hours studied", y = "percentage of scores", title = "Hours vs Percentage") +
  theme_bw()

# **From the graph  we can clearly 
#see that there is a positive linear relation between the number of hours studied and percentage of score.**


# model
model=lm(Scores~Hours,data=DATASET)
summary(model)

# COMPARING PREDICED SCORES AND ACTUAL SCORES

df=data.frame(Predicted_scores=predict(model),Actual_Scores=DATASET$Scores,Hours=DATASET$Hours)
head(df)


#prediction using our model
new=data.frame(Hours=c(9.25))
prediction=predict(model,newdata =new)
print(prediction)
# no of hours 9.25 , predicted score=92,9

