#program to create line chart 
# for Penguins, based off the palmerpenguins dataset 
# By Benjamin Hays

#Installing the palmerpenguins package
install.packages("palmerpenguins")
library(palmerpenguins)

#confirms package is install
summary(penguins)

#Installing the ggthemes pckage
install.packages("ggthemes")

#installing Tidyverse
install.packages("tidyverse")

#Loading Tidyverse and ggthemse 
library(tidyverse)
library(ggthemes)

#Viewing the penguins data
View(penguins)
glimpse(penguins)

#Finished code to create line chart

#plot command, acquires the data, generates the map. 
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
#
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  #changes the color to be good for colorblind people
scale_color_colorblind()


