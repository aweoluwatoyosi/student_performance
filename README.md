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

Call:
lm(formula = Exam_Score ~ ., data = student2)

Residuals:
    Min      1Q  Median      3Q     Max 
-1.2029 -0.4300 -0.1720  0.0842 29.9843 

Coefficients:
                                      Estimate Std. Error t value Pr(>|t|)    
(Intercept)                          41.828571   0.338117 123.710  < 2e-16 ***
Hours_Studied                         0.294871   0.004336  68.009  < 2e-16 ***
Attendance                            0.198778   0.002250  88.363  < 2e-16 ***
Parental_InvolvementLow              -1.982918   0.075370 -26.309  < 2e-16 ***
Parental_InvolvementMedium           -1.062422   0.060514 -17.557  < 2e-16 ***
Access_to_ResourcesLow               -2.063287   0.075113 -27.469  < 2e-16 ***
Access_to_ResourcesMedium            -1.009621   0.060070 -16.807  < 2e-16 ***
Extracurricular_ActivitiesYes         0.561980   0.052940  10.615  < 2e-16 ***
Sleep_Hours                          -0.001982   0.017682  -0.112    0.911    
Previous_Scores                       0.048875   0.001805  27.071  < 2e-16 ***
Motivation_LevelLow                  -1.061976   0.075314 -14.101  < 2e-16 ***
Motivation_LevelMedium               -0.542306   0.068506  -7.916 2.87e-15 ***
Internet_AccessYes                    0.924690   0.097929   9.442  < 2e-16 ***
Tutoring_Sessions                     0.498154   0.021020  23.699  < 2e-16 ***
Family_IncomeLow                     -1.085580   0.071820 -15.115  < 2e-16 ***
Family_IncomeMedium                  -0.590632   0.071941  -8.210 2.66e-16 ***
Teacher_QualityLow                   -1.057501   0.094363 -11.207  < 2e-16 ***
Teacher_QualityMedium                -0.549047   0.058083  -9.453  < 2e-16 ***
School_TypePublic                     0.032657   0.056399   0.579    0.563    
Peer_InfluenceNeutral                 0.522247   0.070434   7.415 1.38e-13 ***
Peer_InfluencePositive                1.026952   0.070087  14.653  < 2e-16 ***
Physical_Activity                     0.186670   0.025278   7.385 1.72e-13 ***
Learning_DisabilitiesYes             -0.853789   0.084750 -10.074  < 2e-16 ***
Parental_Education_LevelHigh School  -0.485825   0.059841  -8.119 5.62e-16 ***
Parental_Education_LevelPostgraduate  0.502745   0.074655   6.734 1.79e-11 ***
Distance_from_HomeModerate            0.387933   0.094669   4.098 4.22e-05 ***
Distance_from_HomeNear                0.907689   0.088773  10.225  < 2e-16 ***
GenderMale                           -0.042151   0.052538  -0.802    0.422    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.069 on 6350 degrees of freedom
Multiple R-squared:  0.7217,	Adjusted R-squared:  0.7205 
F-statistic: 609.8 on 27 and 6350 DF,  p-value: < 2.2e-16

