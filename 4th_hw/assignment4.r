## load library
library(psych)
library(caret)
library(rpart)
library(ggplot2)
library(rattle)

## Read dataset
data <- read.csv("/Users/namseoa/Desktop/kau_data+science/hw/4th_hw/WA_Fn-UseC_-HR-Employee-Attrition.csv")
names(data)[1] = c("Age")

## Dataset Partitioning
set.seed(1000)
idx <- createDataPartition(y = data$Attrition, p = 0.7, list = FALSE)
training <- data[idx, ]
testing <- data[-idx, ]

## Train model
fit <- rpart(Attrition~OverTime + MaritalStatus + TotalWorkingYears + YearsInCurrentRole, 
        training, minsplit=90, minbucket=30,
        parms = list(split='information'))

val_var <- predict(fit, newdata=testing, type='class') # apply the model to the test dataset
ttesting <- as.factor(testing$Attrition)
vval_var <- as.factor(val_var)
cm <- confusionMatrix(ttesting, vval_var, positive = 'Yes')
tree <- fancyRpartPlot(fit, type=2, box.palette = "auto")
print(tree) # display DT(decision tree) plot
print(cm) # print the overview of confusion matrix, to check the model's accuracy

## Draw learning curve of DT model (x axis - amount of training data, y axis - accuracy)
data <- data.frame(
    Attrition = as.factor(data$Attrition),
    OverTime = as.factor(data$OverTime),
    MaritalStatus = as.factor(data$MaritalStatus),
    TotalWorkingYears = data$TotalWorkingYears,
    YearsInCurrentRole = as.factor(data$YearsInCurrentRole)
    )

ctrl <- trainControl(classProbs = TRUE, summaryFunction = twoClassSummary)

lda_data <- learning_curve_dat(
    dat = data,
    outcome = "Attrition",
    test_prop = 1/4,
    method = "rpart",
    metric = "ROC",
    trControl = ctrl,
    control=rpart.control(minsplit=90, minbucket=30, parms=list(split='information')))
    
lda_data <- lda_data[!(lda_data$Data == "Resampling"),] # exclude resampling data from learning curve data
p <- ggplot(lda_data, aes(x = Training_Size, y = ROC, color = Data)) + geom_smooth(method = loess, span = .8) + theme_bw()
print(p) # display learning curve plot