##################
#  Scatter Plot -#
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

# Understand the skeleton of ggplot() function
# ggplot( data = df/matrix, mapping = aes( asthetic arguments) )+
# geometric_object() + Optional_Function()

# plotting a scatter diagram using iris3 package
View(iris)
ggplot(data=iris,mapping = aes(x=Sepal.Length, y=Petal.Length ))+
  geom_point()

# Saving the plot: using ggsave() function
# Alternate method: Goto Plots-> Export -> Save in required format
ggsave("Scatter_SLPL.jpg")

# color the scatter points according to species:   
# Two options for placing color parameter in ggplot(aes)/geom_point()
ggplot(data=iris,
       mapping = aes(x=Sepal.Length, y=Petal.Length,
                     color=Species))+
  geom_point()


ggplot(data=iris,
       mapping = aes(x=Sepal.Length, y=Petal.Length,))+
  geom_point(aes(color=Species))


# Fit a linear regression line
# You can save the plot codes in data object too
# It is good practice & can reuse the code just by using object
myplot <- ggplot(data=iris,
                 mapping = aes(x=Sepal.Length, y=Petal.Length,))+
  geom_point(aes(color=Species))

myplot + stat_smooth(method = "lm", se = TRUE, size = 1)

# In the above code change the parameter values & observe the changes: 
#  se =true/false size=1/3/5


# Adding Information to the graph ( labels )
myplot1 <- myplot + stat_smooth(method = "lm", se = TRUE, size = 1)
myplot1 + labs(title = "TITLE LINE", subtitle = "Sub-title Line",
               caption = "Caption Field", x="X-axis Name", y="Y-axis Name")

# Adding the theme:
myplot2 <- myplot1 + labs(title = "TITLE LINE", subtitle = "Sub-title Line",
                          caption = "Caption Field", x="X-axis Name", y="Y-axis Name")

myplot2 + theme_bw()

myplot2 + theme_dark()

