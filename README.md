## Student Performance
#### This project predicted what affected students' performance in their final examination scores.I used the linear regression model for this prediction.

#### In this prediction, all the collected information was considered to determine what affected about 6,000 students' performance in this examination. 

#### To start this I got my data from Kaggle [https://www.kaggle.com/datasets/lainguyn123/student-performance-factors](url), I started by cleaning the dataset using R. I removed the rows with null values and checked to be sure they were empty(more details on this in the code).
#### First, I made a graph to check where the majority of the range of scores was by plotting a density graph. This showed that the scores of most students fell. Below is a picture.

![image](https://github.com/user-attachments/assets/af0ad82b-3cd1-4c6b-a28c-82d36953af3c)
#### This showed that most students' Exam scores ranged between 58-80.

#### I went on to plot a histogram to show a more in-depth distribution, which clarified where the scores fell. 

![image](https://github.com/user-attachments/assets/47df2ea8-1a75-4ebd-a4dc-54b439a8e3e1)

#### I also plotted the distribution in a 2D histogram, which helped to show how the scores were distributed across the board.
![image](https://github.com/user-attachments/assets/cb3026e9-3a4b-4c06-8f18-af83d90eeddc)

#### One of the fields gathered in the data was the level of parental involvement for each student. It was in different categories like High, Low and Medium. High means the level of involvement could be from 8-10 if there was a range of 1-10. Low could be from 0-3, and medium could be from 5 more or less. It showed that parents with a "medium" level of involvement were the highest, but this did not mean the students did the best. High follows it as the second level of involvement, followed by medium. Here is a graph showing the explanations. 

![image](https://github.com/user-attachments/assets/fa6ddcfd-ab4a-4f00-bcb6-594a3dd8cd31)

#### High could be the parents attended everything involved with the student's school and education, having personal time with them, reading with them during exams and not missing anything about their child. The medium level of involvement would be less than what the high level of involvement provides, and the low could be showing up for one or not showing up for the child at all; it could also involve not knowing what they learn in school or knowing their teacher in this case. 


#### Before starting my prediction, I converted all the data types answered using categorical values of 'Yes' or 'No' and 'High', 'Low' or 'Medium' to factors. I also considered all the data collected to make this prediction. The values used to predict the Exam score outcome were hours studied, attendance, parental involvement, access to resources, sleep hours, previous scores, internet access, tutoring session, family income, teacher quality, school type, peer influence, physical activities, learning disabilities, parental education, distance from school and gender. 

#### I used a linear regression model to predict the Exam score outcome; below is the model's predictive outcome summary. More details are explained after the result.

![image](https://github.com/user-attachments/assets/38bdc6d7-2a4d-4d72-9374-8020d73d89c2)
![image](https://github.com/user-attachments/assets/f4281943-c0aa-4c50-be72-27d11bb145be)

### Explaining this model, we have 
#### Multiple R-squared as 0.7217, meaning approximately 72.17% of the variance in the exam scores is explained by the independent variables included in the model.
#### Adjusted R-squared is 0.7205, a slightly adjusted version of R-squared that accounts for the number of predictors, suggesting that the model is still a good fit even after adjusting for complexity.
#### F-statistic: 609.8 with a very small p-value (< 2.2e-16), indicating that the model is highly statistically significant.

### The significant Positive Predictors:
#### Hours_Studied: 0.2949 - a strong positive relationship with exam scores, meaning that the more time spent studying, the better the performance of the student.
#### Attendance: 0.1988 - higher attendance means the student will have higher scores. The student does not miss class, hence not missing information or work done in class.
#### Previous_Scores: 0.0489 - you can use previous scores to predict current performance better.
#### Extracurricular_ActivitiesYes: 0.5620 - Participating in extracurricular activities correlates with higher scores. Doing things aside from school work is encouraged as it helps with better exam scores.
#### Internet_AccessYes: 0.9247 - Having access to the Internet has a positive impact on exam performance, as students can do more research outside of school activities.
#### Tutoring_Sessions: 0.4982 - the students who attend tutoring sessions tend to perform better in the exams. They have the opportunity to have tutors explain complex schoolwork to them.
#### Peer_InfluencePositive: 1.0270 - the students who have positive peer influence lead to higher exam scores. Their peers could encourage them to study more for better grades.
#### Peer_InfluenceNeutral: 0.5223 - This was also significant. It means that whether you have friends or not, you will still perform better in your exam scores.
#### Physical_Activity: 0.1867 - When students engage in physical activity, it is associated with better exam performance. Exercising or engaging in physical activities helps to keep the brain active.
#### Distance_from_HomeNear: 0.9077 - The students who live closer to school perform better as they do not have to travel far, might not encounter too much traffic or none at all and can meet up with classes in case of unforeseen circumstances.
#### Parental_Education_LevelPostgraduate: 0.5027 - If the parents have a postgraduate degree, they could help impact the students, whether by tutoring them or otherwise.
#### Distance_from_HomeModerate: 0.3879 - If the distance from home to school is not too far, the students could quickly meet up with the school early enough.

### Significant Negative Predictors:
#### Parental_InvolvementLow: -1.9829 - Low parental involvement is strongly associated with lower exam scores. Low-earning parents might not be able to pay the fees of their child or children, which would make them miss classes. 
#### Parental_InvolvementMedium: -1.0624 - Parents getting involved on medium means their involvement is not complete, which leads to lower student performance.
#### Access_to_ResourcesLow: -2.0633 - Low access to resources is a significant negative predictor of exam scores because students might not be able to gather the information they need at that point in time.
#### Access_to_ResourcesMedium: -1.0096 - Medium access to resources is not good enough for students' performance, as they will not have this access as soon as they need it.
#### Motivation_LevelLow: -1.0620 - low motivation decreases exam scores because the student would not study enough as they do not have enough motivation to study their school work.
#### Motivation_LevelMedium: -1.0620 - A medium motivational level is not good enough as it does not immerse the student enough as they should when studying for exams.
#### Family_IncomeLow: -1.0856 - Low-income families have lower exam scores as they might want to use the income they earn for other priorities.
#### Family_IncomeMedium: -0.5906 - medium family income has a significant negative impact; imagine a family with a lot of children; they will not be able to get the chance to provide for each child's well-being adequately
#### Teacher_QualityLow: -1.0575 - low teacher quality negatively impacts student performance as the teacher does not have the necessary educational degree to teach a course, so they have nothing significant enough to pass on.
#### Teacher_QualityMedium:  -0.5490 - medium teacher quality is not good enough for students to perform better in their exams.
#### Learning_DisabilitiesYes: -0.8538 - The students with learning disabilities tend to score lower because they would not be able to assimilate what their teachers teach them.
#### Parental_Education_LevelHigh School: -0.4858 - The parents with lower education levels are associated with poorer performance as they will not have a significant part in supporting their child's school education.


#### Insignificant Predictors:
#### Sleep_Hours: -0.00198 - This has no significant impact on exam performance. The hours you sleep do not affect exam scores.
#### GenderMale: -0.0422 This is not statistically significant, p-value = 0.422. Being Male does not affect the exam scores.
#### School_TypePublic: 0.0327—The school type you attend is not a significant predictor. The p-value is not statistically significant, at 0.563.

#### Interpretation:
#### Factors like hours studied, attendance, previous scores, internet access, peer influence and others have strong positive relationships with exam scores.
#### Parental involvement, access to resources, family income and other factors have substantial negative impacts, suggesting that a lack of these resources or support systems significantly lowers the performance of the students.
#### Sleep, gender, and school type(public) do not appear to be significant predictors of exam scores in this model.

#### This analysis suggests that improving access to resources, increasing parental involvement, and providing academic support through tutoring and extracurricular activities can impact students' exam performance meaningfully.

