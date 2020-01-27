library(tidyverse)



# Citations

halorest <- read.csv("halorest.csv")
head(halorest)
summary(halorest)


ggplot(data=halorest) +
  geom_point(mapping = aes(x = Year, y = X, size = CitesPerYear, color = Field)) +
  facet_wrap(~Field) +
  ylab("Publications") +
  xlab("Year")


# Germination



# Propogation

prop <- read.csv("propfinal.csv")
view(prop)

ggplot(data = prop) +
  geom_point(mapping = aes(x = ppfd, y = h, color = ltr, size = br)) +
  facet_wrap(~Date) +
  geom_smooth(mapping = aes(x=ppfd, y = h),method = lm) +
  ylab("Height") +
  xlab("Photosynthetic Photon Fux Density") +
  theme_light()


# Cultivation
cult <-cult_prelim_copy
summary(cult) 
head(cult)

ggplot(data = cult) +
  geom_point(mapping = aes(x = Time, y = Weight, color = PPFD)) +
  geom_smooth(mapping = aes(x = Time, y = Weight), method = lm) +
  theme_light() +
  xlab("Distance From Edge") +
  ylab("Weight in Ounces")

# Analysis

plot(Weight ~ Time, data = cult)
mod1<-lm(formula = Weight ~ Time, data = cult)
summary(mod1)
abline(mod1)
coef(mod1)
anova(mod1)

plot(mod1)

  