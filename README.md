## Student Performance
### This project was on predicting what affects students performance in their final examination score.

### In this prediction all the collected informaton were considered to know what affected about 6000 students performance in this examination. 

### To start this I got my data from Kaggle [https://www.kaggle.com/datasets/lainguyn123/student-performance-factors](url), I started by cleaning the dataset using R. I removed the rows with null values and checked to be sure it was empty(more details on this in the code).
### First of all I made a graph to check where the majority of the range of scores were by plotting a density graph. This showed were the scores of most students fell. Below is a picture.

![image](https://github.com/user-attachments/assets/af0ad82b-3cd1-4c6b-a28c-82d36953af3c)
### This showed that the range of majority of the students Exam scores was between 58-80.

### I went on to plot an histogram to show a more indepth distribution as this gave it moe clarity as to were the scores fell. 

![image](https://github.com/user-attachments/assets/47df2ea8-1a75-4ebd-a4dc-54b439a8e3e1)

### I also plotted the distribution sing a 2D histogram. This helped to show how the scores were distibuted across board.

![image](https://github.com/user-attachments/assets/cb3026e9-3a4b-4c06-8f18-af83d90eeddc)

### One of the fields gathered in the data was the level of parental involvment for each student. It was in different categories like High, Low and Medium. High meaning the level of involvment could be from 8-10 if there was a range on 1-10. Low could be from 0-3 and medium could be from 5 there about. It showed that Parents that had a "medium" level of involvement were the highest but this did not mean they did the best. It followed by High as the second level of involvment and then medium. Here is a graph showing the explanantions. 

![image](https://github.com/user-attachments/assets/fa6ddcfd-ab4a-4f00-bcb6-594a3dd8cd31)

### High could be he parents attended everything involved with the students school and education, having personal time with them, reading with them during exams and not missing anything involved regarding their child. The medium level of involement would be less than what the high level of involvement provides and the low could be showing up for one or not showing up for the child at all, it could also involve not knowing what they learn in school or knowing their teacher in this case. 

### Before I could start my prediction I converted all the data types that were answered using categorical values of 'Yes' or 'No' and 'High', 'Low' or 'Medium' to factors. I also considered all the data collected to make this prediction. The values used to predict the Exam score outcome were hours studied, attendance, parental involvement, access to resources, sleep hours, previous scores, internet access, tutoring session, family income, teacher quality, school type, peer influence, physical activiies, learning disabilities, prental education, distance from school and gender. 

### I made use of a linear regression model in this prediction of the Exam sores outcome, below is the summary of the model's predictive outcome. More details are explained after the result

![image](https://github.com/user-attachments/assets/38bdc6d7-2a4d-4d72-9374-8020d73d89c2)
![image](https://github.com/user-attachments/assets/f4281943-c0aa-4c50-be72-27d11bb145be)


### To exlplain this outcome 

Residual standard error: 2.069 on 6350 degrees of freedom
Multiple R-squared:  0.7217,	Adjusted R-squared:  0.7205 
F-statistic: 609.8 on 27 and 6350 DF,  p-value: < 2.2e-16

