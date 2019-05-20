install.packages("RcmdrPlugin.IPSUR")
library(RcmdrPlugin.IPSUR)
data("RcmdrTestDrive")

#a. Calculate the average salary by gender and smoking status.
tapply(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender, RcmdrTestDrive$smoking), mean)

#b. Which gender has the highest mean salary?
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean)
which.max(tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean))

#c. Report the highest mean salary.
mean(RcmdrTestDrive$salary)

#d. Compare the spreads for the genders by calculating the
# standard deviation of salary by gender.
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, sd)
boxplot(salary~gender, data=RcmdrTestDrive, main="Salary v/s  Gender", xlab="Gender",
        ylab="Salary")
