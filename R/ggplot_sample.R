### github and R project

# 1. make github repository
# 2. setting git in local PC
# 3. make new R project -> Version control -> Git -> Clone Git Repository

library(renv)
install("ggplot2@3.3.2")

library(ggplot2)
installed.packages()["ggplot2",]

ggp <- ggplot() +
  geom_boxplot(aes(x=factor(cyl), y=mpg, fill=factor(am)), mtcars) +
  scale_x_discrete("cyl") + guides(fill=guide_legend("am")) +
  theme_classic()
ggp

ggp + theme(legend.position = "bottom")
ggp + theme(legend.position = "bottom", panel.background = element_rect(fill="grey80"))


