## Student Performance
### This project was on predicting what affects students performance in their final examination score.

### In this prediction all the collected informaton were considered to know what affected about 6000 students performance in this examination. 

### To start this I got my data from Kaggle [https://www.kaggle.com/datasets/lainguyn123/student-performance-factors](url), I started by cleaning the dataset using R. I removed the rows with null values and checked to be sure it was empty(more details on this in the code).
### First of all I made a graph to check where the majority of the range of scores were by plotting a density graph. This showed were the scores of most students fell. Below is a picture.

![image](https://github.com/user-attachments/assets/af0ad82b-3cd1-4c6b-a28c-82d36953af3c)
### This showed that the range of majority of the students Exam scores was between 58-80.

### I went on to plot an histogram to show a more indepth distribution as this gave it more clarity as to were the scores fell. 

![image](https://github.com/user-attachments/assets/47df2ea8-1a75-4ebd-a4dc-54b439a8e3e1)

### I also plotted the distribution in a 2D histogram. This helped to show how the scores were distibuted across board.

![image](https://github.com/user-attachments/assets/cb3026e9-3a4b-4c06-8f18-af83d90eeddc)

### One of the fields gathered in the data was the level of parental involvment for each student. It was in different categories like High, Low and Medium. High meaning the level of involvment could be from 8-10 if there was a range on 1-10. Low could be from 0-3 and medium could be from 5 more or less. It showed that Parents that had a "medium" level of involvement were the highest but this did not mean the students did the best. It followed by High as the second level of involvment and then medium. Here is a graph showing the explanantions. 

![image](https://github.com/user-attachments/assets/fa6ddcfd-ab4a-4f00-bcb6-594a3dd8cd31)

### High could be he parents attended everything involved with the students school and education, having personal time with them, reading with them during exams and not missing anything involved regarding their child. The medium level of involement would be less than what the high level of involvement provides and the low could be showing up for one or not showing up for the child at all, it could also involve not knowing what they learn in school or knowing their teacher in this case. 

### Before I could start my prediction I converted all the data types that were answered using categorical values of 'Yes' or 'No' and 'High', 'Low' or 'Medium' to factors. I also considered all the data collected to make this prediction. The values used to predict the Exam score outcome were hours studied, attendance, parental involvement, access to resources, sleep hours, previous scores, internet access, tutoring session, family income, teacher quality, school type, peer influence, physical activiies, learning disabilities, prental education, distance from school and gender. 

### I made use of a linear regression model in this prediction of the Exam sores outcome, below is the summary of the model's predictive outcome. More details are explained after the result

![image](https://github.com/user-attachments/assets/38bdc6d7-2a4d-4d72-9374-8020d73d89c2)
![image](https://github.com/user-attachments/assets/f4281943-c0aa-4c50-be72-27d11bb145be)

### Explaining this model, we have 
#### Multiple R-squared as 0.7217, meaning approximately 72.17% of the variance in the exam scores is explained by the independent variables included in the model.
#### Adjusted R-squared is 0.7205, a slightly adjusted version of R-squared that accounts for the number of predictors, suggesting that the model is still a good fit even after adjusting for complexity.
#### F-statistic: 609.8 with a very small p-value (< 2.2e-16), indicating that the model is highly statistically significant less than .05

### The significant Positive Predictors:
#### Hours_Studied: 0.2949 - strong positive relationship with exam scores, meaning that the more time spent studying the better the performance of the student.
#### Attendance: 0.1988 - higher attendance means the student will have higher scores. The student does not miss class hence not missing information or work done in the class.
#### Previous_Scores: 0.0489 - you can use previous scores as a good predictor of current performance.
#### Extracurricular_ActivitiesYes: 0.5620 - if you participate in extracurricular activities it correlates with higher scores. Doing things asides school work is encouraged as it helps with better exam scores.
#### Internet_AccessYes: 0.9247 - when they have access to the internet is has a positive impact on exam performance as they can do more research outside of school activities.
#### Tutoring_Sessions: 0.4982 - the students who attend tutoring sessions tend to perform better in the exams. They have the opportunity of tutors explaning complex school work to them.
#### Peer_InfluencePositive: 1.0270 - the students who have positive peer influence leads to higher exam scores. Their peers could encourage them to study more for better grades.
#### Peer_InfluenceNeutral: 0.5222 - 
#### Physical_Activity: 0.1867 - when students engage in physical activity it is associated with better exam performance for them. Exercising or encaging in physical activities helps to keep the brain active.
#### Distance_from_HomeNear: 0.9077 the students who live closer to school perform better as they do no  have to travel far and might not encounter too much traffic or none at all and can meet up with classes in case of unforeseen circumstances.
#### ParentalInvolvementPostgraduate: 0.5027 -  
#### Distance_from_HomeModerate: 0.3879

### Significant Negative Predictors:
#### Parental_InvolvementLow: -1.9829 - low and medium parental involvement is strongly associated with lower exam scores. The parents who earn low might not be able to pay the fees of their child or children which would make them miss classes. 
#### Parental_InvolvementMedium:
#### Access_to_ResourcesLow: -2.0633 - low and medium access to resources is a significant negative predictor of exam scores, because they might ot be able to gather the information they need at that point in time.
#### Access_to_ResourcesMedium: 
#### Motivation_LevelLow: -1.0620 - low and medium motivation decreases exam scores because the student would not study enough as they have not enough motivation to study thier school work.
#### Motivation_LevelMedium:
#### Family_IncomeLow: -1.0856 - The families that have low or medium income leads to lower exam scores as they might want to put thr income they get into other things they consider as priority.
#### Family_IncomeMedium: 
#### Teacher_QualityLow: -1.0575 - low teacher quality negatively impacts student performance as the teacher does not have the necessary educational degree to teach a course so they have nothing significant enough to pass on.
#### Teacher_QualityMedium: 
#### Learning_DisabilitiesYes: -0.8538 - The students with learning disabilities tend to score lower because they would no be able to assimilate what they are taught by their teachers.
#### Parental_Education_LevelHigh School: -0.4858 -The parennts with lower education levels are associated with poorer performance as they will not have a significant part in supporting their child's school education.
#### Parental_Education_LevelPostgraduate:

#### Insignificant Predictors:
#### Sleep_Hours: -0.00198 - This has no significant impact on exam performance. The hours you sleep has no impact on exam scores.
#### GenderMale: -0.0422 This is not statistically significant, p-value = 0.422. Being Male does not affect the exam scores.
#### School_TypePublic: 0.0327 - The school type you attend is not a significant predictor. It is not statistically significant, p-value = 0.563.

#### Interpretation:
#### Factors like hours studied, attendance, previous scores, internet access, peer influence have strong positive relationships with exam scores.
#### Parental involvement, access to resources, family income have strong negative impacts, suggesting that lack of these resources or support systems significantly lowers performance.
#### Sleep, gender and school type(public) do not appear to be significant predictors of exam scores in this model.
#### This analysis suggests that improving access to resources, increasing parental involvement, and providing academic support through tutoring and extracurricular activities can have a meaningful impact on students' exam performance.

