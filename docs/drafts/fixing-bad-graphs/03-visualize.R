# packages ----------------------------------------------------------------
# install.packages(c("tidyverse", "janitor", "skimr", "fs", "ggthemes"))
library(tidyverse)
library(janitor)
library(skimr)
library(fs)
library(ggthemes)


## avg_facebook_likes-------------------------------------------------------------------------
Corbyn %>%
  ggplot2::qplot(x = avg_facebook_likes, data = .)


## pop_65_percent-----------------------------------------------------------------------------
Pensions %>%
  # the variable
  ggplot2::qplot(x = pop_65_percent,
                 y = " ",
                 # the dot
                 data = .,
                 geom = "boxplot")


## value-country------------------------------------------------------------------------------
Balance %>%
  ggplot2::qplot(x = value, y = country,
                 data = ., geom = "boxplot")


## date-percent_responding_right--------------------------------------------------------------
Brexit %>%
  ggplot2::qplot(x = date,
                 y = percent_responding_right, data = .)


## pivot_longer-------------------------------------------------------------------------------
Brexit %>% 
  tidyr::pivot_longer(cols = -date, 
                      names_to = "poll", 
                      values_to = "percent") 


## pivot_longer-qplot-------------------------------------------------------------------------
Brexit %>% 
  tidyr::pivot_longer(cols = -date, 
                      names_to = "poll", 
                      values_to = "percent") %>%
  ggplot2::qplot(x = date, 
                 y = percent, 
                 group = poll, 
                 data = ., 
                 geom = "line", 
                 color = poll)




## ggp_brexit---------------------------------------------------------------------------------
ggp_brexit <- TidyBrexit %>% 
  ggplot(mapping = aes(x = date, y = percent))
ggp_brexit


## geom_smooth--------------------------------------------------------------------------------
ggp_brexit + ggplot2::geom_smooth()


## color-poll---------------------------------------------------------------------------------
ggp_brexit + 
  ggplot2::geom_smooth(aes(color = poll))


## ggp_brexit_smooth--------------------------------------------------------------------------
ggp_brexit_smooth <- ggp_brexit + 
  ggplot2::geom_smooth(aes(color = poll), 
                       se = FALSE, 
                       show.legend = FALSE)
ggp_brexit_smooth


## geom_point---------------------------------------------------------------------------------
ggp_brexit_smooth + 
  ggplot2::geom_point(aes(color = poll), 
                      show.legend = FALSE, 
                      alpha = 1/3)


## ggp_brexit_global--------------------------------------------------------------------------
ggp_brexit_global <- TidyBrexit %>% 
  ggplot2::ggplot(mapping = aes(x = date, 
                                y = percent, 
                                color = poll)) + 
  ggplot2::geom_smooth(se = FALSE, 
                       show.legend = FALSE) + 
  ggplot2::geom_point(alpha = 1/3, 
                      show.legend = FALSE)

ggp_brexit_global


## ggp_brexit_global_colors-------------------------------------------------------------------
ggp_brexit_global_colors <- ggp_brexit_global + 
  scale_color_manual(
    values = c("cornflowerblue", "firebrick3")
  )

ggp_brexit_global_colors


## ggp_brexit_global_colors_text--------------------------------------------------------------
ggp_brexit_global_colors_text <- ggp_brexit_global_colors + 
  geom_text(label = "Wrong", color = "firebrick3", 
            x = as.Date("2018-01-01"), y = 46) + 
  geom_text(label = "Right", color = "cornflowerblue", 
            x = as.Date("2018-01-01"), y = 42.5)
ggp_brexit_global_colors_text


## ggp_brexit_global_colors_text_scale_y------------------------------------------------------
ggp_brexit_global_colors_text_scale_y <- ggp_brexit_global_colors_text + 
  ggplot2::scale_y_continuous(position = "right")
ggp_brexit_global_colors_text_scale_y


## labs_eco-----------------------------------------------------------------------------------
labs_eco <- ggplot2::labs(
  title = "Bremorse", 
  subtitle = "'In hindsight, do you think Britain was right or wrong to vote to leave the EU?'",  
  caption = "Source: NatCen Social Research",  
  x = " ",  
  y = "Percent (%)")


## ggp_brexit_labs----------------------------------------------------------------------------
ggp_brexit_labs <- ggp_brexit_global_colors_text_scale_y + 
  labs_eco
ggp_brexit_labs


## theme_economist_white----------------------------------------------------------------------
ggp_brexit_labs + 
  ggthemes::theme_economist_white(gray_bg = FALSE, 
                                  base_size = 12, 
                                  base_family = "Verdana")

