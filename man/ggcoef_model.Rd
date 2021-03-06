% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggcoef_model.R
\name{ggcoef_model}
\alias{ggcoef_model}
\alias{ggcoef_compare}
\alias{ggcoef_multinom}
\alias{ggcoef_plot}
\title{Plot model coefficients}
\usage{
ggcoef_model(
  model,
  tidy_fun = broom::tidy,
  conf.int = TRUE,
  conf.level = 0.95,
  exponentiate = FALSE,
  variable_labels = NULL,
  term_labels = NULL,
  interaction_sep = " * ",
  categorical_terms_pattern = "{level}",
  add_reference_rows = TRUE,
  no_reference_row = NULL,
  intercept = FALSE,
  include = dplyr::everything(),
  significance = 1 - conf.level,
  significance_labels = NULL,
  show_p_values = TRUE,
  signif_stars = TRUE,
  return_data = FALSE,
  ...
)

ggcoef_compare(
  models,
  type = c("dodged", "faceted"),
  tidy_fun = broom::tidy,
  conf.int = TRUE,
  conf.level = 0.95,
  exponentiate = FALSE,
  variable_labels = NULL,
  term_labels = NULL,
  interaction_sep = " * ",
  categorical_terms_pattern = "{level}",
  add_reference_rows = TRUE,
  no_reference_row = NULL,
  intercept = FALSE,
  include = dplyr::everything(),
  significance = 1 - conf.level,
  significance_labels = NULL,
  return_data = FALSE,
  ...
)

ggcoef_multinom(
  model,
  type = c("dodged", "faceted"),
  y.level_label = NULL,
  tidy_fun = broom::tidy,
  conf.int = TRUE,
  conf.level = 0.95,
  exponentiate = FALSE,
  variable_labels = NULL,
  term_labels = NULL,
  interaction_sep = " * ",
  categorical_terms_pattern = "{level}",
  add_reference_rows = TRUE,
  no_reference_row = NULL,
  intercept = FALSE,
  include = dplyr::everything(),
  significance = 1 - conf.level,
  significance_labels = NULL,
  show_p_values = TRUE,
  signif_stars = TRUE,
  return_data = FALSE,
  ...
)

ggcoef_plot(
  data,
  x = "estimate",
  y = "label",
  exponentiate = FALSE,
  point_size = 2,
  point_stroke = 2,
  point_fill = "white",
  colour = NULL,
  colour_guide = TRUE,
  colour_lab = "",
  colour_labels = ggplot2::waiver(),
  shape = "significance",
  shape_values = c(16, 21),
  shape_guide = TRUE,
  shape_lab = "",
  errorbar = TRUE,
  errorbar_height = 0.1,
  errorbar_coloured = FALSE,
  stripped_rows = TRUE,
  strips_odd = "#11111111",
  strips_even = "#00000000",
  vline = TRUE,
  vline_colour = "grey50",
  dodged = FALSE,
  dodged_width = 0.8,
  facet_row = "var_label",
  facet_col = NULL,
  facet_labeller = "label_value"
)
}
\arguments{
\item{model}{a regression model object}

\item{tidy_fun}{option to specify a custom tidier function}

\item{conf.int}{should confidence intervals be computed? (see \code{\link[broom:reexports]{broom::tidy()}})}

\item{conf.level}{the confidence level to use for the confidence
interval if \code{conf.int = TRUE}; must be strictly greater than 0
and less than 1; defaults to 0.95, which corresponds to a 95
percent confidence interval}

\item{exponentiate}{if \code{TRUE} a logarithmic scale will
be used for x-axis}

\item{variable_labels}{a named list or a named vector of custom variable labels}

\item{term_labels}{a named list or a named vector of custom term labels}

\item{interaction_sep}{separator for interaction terms}

\item{categorical_terms_pattern}{a \link[glue:glue]{glue pattern} for
labels of categorical terms with treatment or sum contrasts
(see \code{\link[broom.helpers:model_list_terms_levels]{model_list_terms_levels()}})}

\item{add_reference_rows}{should reference rows be added?}

\item{no_reference_row}{variables (accepts \link[dplyr:select]{tidyselect} notation)
for those no reference row should be added, when \code{add_reference_rows = TRUE}}

\item{intercept}{should the intercept(s) be included?}

\item{include}{variables to include. Accepts \link[dplyr:select]{tidyselect}
syntax. Use \code{-} to remove a variable. Default is \code{everything()}.
See also \code{\link[broom.helpers:select_helpers]{all_continuous()}}, \code{\link[broom.helpers:select_helpers]{all_categorical()}}, \code{\link[broom.helpers:select_helpers]{all_dichotomous()}}
and \code{\link[broom.helpers:select_helpers]{all_interaction()}}}

\item{significance}{level (between 0 and 1) below which a
coefficient is consider to be significantly different from 0
(or 1 if \code{exponentiate = TRUE}), \code{NULL} for not highlighting
such coefficients}

\item{significance_labels}{optional vector with custom labels
for significance variable}

\item{show_p_values}{if \code{TRUE}, add p-value to labels}

\item{signif_stars}{if \code{TRUE}, add significant stars to labels}

\item{return_data}{if \code{TRUE}, will return the data.frame used
for plotting instead of the plot}

\item{...}{parameters passed to \code{\link[=ggcoef_plot]{ggcoef_plot()}}}

\item{models}{named list of models}

\item{type}{a dodged plot or a facetted plot?}

\item{y.level_label}{an optional named vector for labelling \code{y.level} (see examples)}

\item{data}{a data frame containing data to be plotted,
typically the output of \code{\link[=ggcoef_model]{ggcoef_model()}}, \code{\link[=ggcoef_compare]{ggcoef_compare()}}
or \code{\link[=ggcoef_multinom]{ggcoef_multinom()}} with the option \code{return_data = TRUE}}

\item{x, y}{variables mapped to x and y axis}

\item{point_size}{size of the points}

\item{point_stroke}{thickness of the points}

\item{point_fill}{fill colour for the points}

\item{colour}{optional variable name to be mapped to
colour aesthetic}

\item{colour_guide}{should colour guide be displayed
in the legend?}

\item{colour_lab}{label of the colour aesthetic in the legend}

\item{colour_labels}{labels argument passed to
\code{\link[ggplot2:scale_colour_discrete]{ggplot2::scale_colour_discrete()}} and
\code{\link[ggplot2:discrete_scale]{ggplot2::discrete_scale()}}}

\item{shape}{optional variable name to be mapped to the
shape aesthetic}

\item{shape_values}{values of the different shapes to use in
\code{\link[ggplot2:scale_manual]{ggplot2::scale_shape_manual()}}}

\item{shape_guide}{should shape guide be displayed in the legend?}

\item{shape_lab}{label of the shape aesthetic in the legend}

\item{errorbar}{should error bars be plotted?}

\item{errorbar_height}{height of error bars}

\item{errorbar_coloured}{should error bars be coloured as the points?}

\item{stripped_rows}{should stripped rows be displayed in the background?}

\item{strips_odd}{color of the odd rows}

\item{strips_even}{color of the even rows}

\item{vline}{should a vertical line de drawn at 0 (or 1 if \code{exponentiate = TRUE})?}

\item{vline_colour}{colour of vertical line}

\item{dodged}{should points be dodged (according to the colour aesthetic)?}

\item{dodged_width}{width value for \code{\link[ggplot2:position_dodge]{ggplot2::position_dodge()}}}

\item{facet_row}{variable name to be used for row facets}

\item{facet_col}{optional variable name to be used for column facets}

\item{facet_labeller}{labeller function to be used for labelling facets;
if labels are too long, you can use \code{\link[ggplot2:labellers]{ggplot2::label_wrap_gen()}} (see examples),
more information in the documentation of \code{\link[ggplot2:facet_grid]{ggplot2::facet_grid()}}}
}
\description{
Plot model coefficients
}
\details{
\code{ggcoef_model()}, \code{ggcoef_multinom()} and \code{ggcoef_compare()} use
\code{\link[broom.helpers:tidy_plus_plus]{broom.helpers::tidy_plus_plus()}} to obtain a tibble of the model
coefficients, apply additional data transformation and then pass the
produced tibble to \code{ggcoef_plot()} to generate the plot.

For more control, you can use the argument \code{return_data = TRUE} to
get the produced tibble, apply any transformation of your own and
then pass your customised tibble to \code{ggcoef_plot()}.
}
\section{Functions}{
\itemize{
\item \code{ggcoef_model}: Redesign of \code{\link[=ggcoef]{ggcoef()}} based on \code{\link[broom.helpers:tidy_plus_plus]{broom.helpers::tidy_plus_plus()}}.

\item \code{ggcoef_compare}: Designed for displaying several models on the same plot.

\item \code{ggcoef_multinom}: A variation of \code{\link[=ggcoef_model]{ggcoef_model()}} adapted to multinomial logistic regressions performed with \code{\link[nnet:multinom]{nnet::multinom()}}.

\item \code{ggcoef_plot}: SOME DESCRIPTION HERE
}}

\examples{
# Small function to display plots only if it's interactive
p_ <- GGally::print_if_interactive

data(tips, package = "reshape")
mod_simple <- lm(tip ~ day + time + total_bill, data = tips)
p_(ggcoef_model(mod_simple))

# custom variable labels
# you can use the labelled package to define variable labels before computing model
if (require(labelled)) {
  tips_labelled <- tips \%>\%
    labelled::set_variable_labels(
      day = "Day of the week",
      time = "Lunch or Dinner",
      total_bill = "Bill's total"
    )
  mod_labelled <- lm(tip ~ day + time + total_bill, data = tips_labelled)
  p_(ggcoef_model(mod_labelled))
}
# you can provide custom variable labels with 'variable_labels'
p_(ggcoef_model(
  mod_simple,
  variable_labels = c(
    day = "Week day",
    time = "Time (lunch or dinner ?)",
    total_bill = "Total of the bill"
  )
))
# if labels are too long, you can use 'facet_labeller' to wrap them
p_(ggcoef_model(
  mod_simple,
  variable_labels = c(
    day = "Week day",
    time = "Time (lunch or dinner ?)",
    total_bill = "Total of the bill"
  ),
  facet_labeller = label_wrap_gen(10)
))

# do not display variable facets but add colour guide
p_(ggcoef_model(mod_simple, facet_row = NULL, colour_guide = TRUE))

# a logistic regression example
d_titanic <- as.data.frame(Titanic)
d_titanic$Survived <- factor(d_titanic$Survived, c("No", "Yes"))
mod_titanic <- glm(
  Survived ~ Sex * Age + Class,
  weights = Freq,
  data = d_titanic,
  family = binomial
)

# use 'exponentiate = TRUE' to get the Odds Ratio
p_(ggcoef_model(mod_titanic, exponentiate = TRUE))

# display intercepts
p_(ggcoef_model(mod_titanic, exponentiate = TRUE, intercept = TRUE))

# customize terms labels
p_(
  ggcoef_model(
    mod_titanic,
    exponentiate = TRUE,
    show_p_values = FALSE,
    signif_stars = FALSE,
    add_reference_rows = FALSE,
    categorical_terms_pattern = "{level} (ref: {reference_level})",
    interaction_sep = " x "
  ) +
  scale_y_discrete(labels = scales::label_wrap(15))
)

# display only a subset of terms
p_(ggcoef_model(mod_titanic, exponentiate = TRUE, include = c("Age", "Class")))

# do not change points' shape based on significance
p_(ggcoef_model(mod_titanic, exponentiate = TRUE, significance = NULL))

# a black and white version
p_(ggcoef_model(
  mod_titanic, exponentiate = TRUE,
  colour = NULL, stripped_rows = FALSE
))

# show dichotomous terms on one row
p_(ggcoef_model(
  mod_titanic,
  exponentiate = TRUE,
  no_reference_row = broom.helpers::all_dichotomous(),
  categorical_terms_pattern = "{ifelse(dichotomous, paste0(level, ' / ', reference_level), level)}",
  show_p_values = FALSE
))

# works also with with polynomial terms
mod_poly <- lm(
  tip ~ poly(total_bill, 3) + day,
  data = tips,
)
p_(ggcoef_model(mod_poly))

# or with different type of contrasts
# for sum contrasts, the value of the reference term is computed
mod2 <- lm(
  tip ~ day + time + sex,
  data = tips,
  contrasts = list(time = contr.sum, day = contr.treatment(4, base = 3))
)
p_(ggcoef_model(mod2))

# Use ggcoef_compare() for comparing several models on the same plot
mod1 <- lm(Fertility ~ ., data = swiss)
mod2 <- step(mod1, trace = 0)
mod3 <- lm(Fertility ~ Agriculture + Education * Catholic, data = swiss)
models <- list("Full model" = mod1, "Simplified model" = mod2, "With interaction" = mod3)

p_(ggcoef_compare(models))
p_(ggcoef_compare(models, type = "faceted"))

# you can reverse the vertical position of the point by using a negative value
# for dodged_width (but it will produce some warnings)
\dontrun{
  p_(ggcoef_compare(models, dodged_width = -.9))
}

# specific function for nnet::multinom models
if (require(nnet)) {
  data(happy)
  mod <- multinom(happy ~ age + degree + sex, data = happy)
  p_(ggcoef_multinom(mod, exponentiate = TRUE))
  p_(ggcoef_multinom(mod, type = "faceted"))
  p_(ggcoef_multinom(
    mod, type = "faceted",
    y.level = c(
      "pretty happy" = "pretty happy\n(ref: very happy)",
      "very happy" = "very happy"
    )
  ))
}
}
