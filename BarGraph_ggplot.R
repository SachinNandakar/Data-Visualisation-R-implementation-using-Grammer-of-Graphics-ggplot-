##################
#     BAR GRAPH        -#
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


# Plot simple bar graph
ggplot(mtcars, aes(x = factor(gear) ))+geom_bar()

ggplot(mtcars, aes(x = factor(gear),fill="red"))+geom_bar()

# adding contrast to the color 
ggplot(mtcars, aes(x = factor(gear) ))+geom_bar(fill="red",alpha=1)
ggplot(mtcars, aes(x = factor(gear) ))+geom_bar(fill="red",alpha=0.25)

# Color each bar by group
ggplot(mtcars, aes(x = factor(gear),fill=factor(gear)))+geom_bar()

# Adding groups in the bar by cyl (4 6 8)
ggplot(mtcars, aes(x = factor(gear),fill=factor(cyl)))+geom_bar()


# Convert above graph into percentage bar diagram   [ in two ways ]
ggplot(mtcars, aes(x = factor(gear),fill=factor(cyl)))+
  geom_bar(position = "fill")
# OR 
ggplot(mtcars, aes(x = factor(gear),fill=factor(cyl)))+
  geom_bar(position = position_fill())


# convert into multiple bar graph  [ in two version ]
ggplot(mtcars, aes(x = factor(gear),fill=factor(cyl)))+
  geom_bar(position = position_dodge())
# OR
ggplot(mtcars, aes(x = factor(gear),fill=factor(cyl)))+
  geom_bar(position = "dodge")

