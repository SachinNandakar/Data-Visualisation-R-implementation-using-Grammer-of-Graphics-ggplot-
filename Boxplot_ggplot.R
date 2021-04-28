##################
#    BOX PLOTS  -#
##################

# Clear the workspace
rm(list = ls())

# NOTE:
# Uncomment the code lines wherever required (Ex: Package installation..)
# set the working directory: Recommended
# It will enable in keeping all the plots in one location.
# use setwd() & getwd() functions

# Install & load the package " ggplot2 "
# install.packages("ggplot2")
library(ggplot2)
library(dplyr)

# Plotting box plot using "orange" data set
# x axis we need factor data value and y axis integer value
# first need to convert the tree integer value into factor type using mutate

df_TD <- data.frame(Orange)
View(df_TD)
factor(Orange$Tree)

df_TD <- mutate(df_TD, TreeNF = factor(Tree, order=TRUE, labels = c("A","B","C","D","E")))
View(df_TD)

ggplot2::ggplot(df_TD, aes(x=TreeNF,y=circumference))+
  geom_boxplot()


# flipping the graph side: horizontally
data_boxplot <- ggplot2::ggplot(df_TD, aes(x=TreeNF,y=circumference))+
  geom_boxplot()

data_boxplot + coord_flip()

# marking the outliers, color the outlier points
ggplot2::ggplot(df_TD, aes(x=TreeNF,y=circumference))+
  geom_boxplot(outlier.color = "blue", outlier.size = 3)

# Check out no outliers present in the plot

# Box plot with dots ( input data set as dots)  Here, u can visualise no outliers
ggplot2::ggplot(df_TD, aes(x=TreeNF,y=circumference))+
  geom_boxplot(outlier.color = "blue", outlier.size = 3)+
  geom_dotplot(binaxis = 'y', dotsize = 1)



# Another Example: As Quick Review
# use package "ToothGrowth"  mutate dose & use as X-axis, y-axis will be len

df_TG <- data.frame(ToothGrowth)
factor(df_TG$dose)
df_TG <- mutate(df_TG, doseNF = factor(dose, order=TRUE, labels = c("0.5D","1.0D","2.0D")))
View(df_TG)

ggplot2::ggplot(df_TG, aes(x=doseNF,y=len))+
  geom_boxplot(outlier.color = "red", outlier.shape = 2, outlier.size = 3)+
  geom_dotplot(binaxis = 'y', dotsize = 1)