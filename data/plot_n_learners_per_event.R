#!/bin/env Rscript

t <- readr::read_csv(
  "n_learners_per_event.csv",
  col_types = readr::cols(
    date = readr::col_date(format = "%Y%m%d"),
    n_learners = readr::col_integer()
  )
)

ggplot2::ggplot(
  t,
  ggplot2::aes(x = date, y = n_learners)
) + 
  ggplot2::geom_line() +
  ggplot2::geom_point() +
  ggplot2::scale_x_date() +
  ggplot2::scale_y_continuous(limits = c(0, NA)) +
  ggplot2::labs(
    title = "Number of learners in time",
    caption = "Course: Intro to Mermaid"
  )
ggplot2::ggsave("n_learners_per_event.png", width = 7, height = 7)
