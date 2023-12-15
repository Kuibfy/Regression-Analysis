
#Heart Failure Clinical Records
#Northern College at Pures

#upload the Heart failure clinical record data sets

heartfailure= read.csv("Heart Failure Clinical Records.csv")
View(heartfailure)

#Regression Analysis

model_A = lm(creatinine_phosphokinase ~ high_blood_pressure,
             data = heartfailure)

summary(model_A)

model_B = lm(creatinine_phosphokinase ~ high_blood_pressure + age,
             data = heartfailure)
summary(model_B)

#All Inclusive Model with creatinine_phosphokinase

model_C = lm(creatinine_phosphokinase~.,
             data = heartfailure)
summary(model_C)

#All Inclusive Model with smoking

model_D = lm(smoking~.,
             data = heartfailure)
summary(model_D)

#model with smoking and sex and diabetes

model_E = lm(smoking ~ sex + diabetes,
             data = heartfailure)
summary(model_E)
