% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/counter.R
\name{counter}
\alias{counter}
\title{Hue processing function}
\usage{
counter(
  slice,
  lower_hue_threshold,
  upper_hue_threshold,
  lower_saturation_threshold = 0.05,
  lower_luminance_threshold = 0.05,
  upper_luminance_threshold = 0.95,
  border_size = 0.25,
  iso_blur = 2
)
}
\arguments{
\item{slice}{A subimage of a single target/recipient photograph.}

\item{lower_hue_threshold}{Lower hue threshold for the token color.}

\item{upper_hue_threshold}{Upper for the token color.}

\item{lower_saturation_threshold}{Lower limit of greyness before the hue of such pixels is excluded from density calculations.}

\item{lower_luminance_threshold}{Lower limit of darkness before the hue of such pixels is excluded from density calculations.}

\item{upper_luminance_threshold}{Upper limit of lightness before the hue of such pixels is excluded from density calculations.}

\item{border_size}{Image border excluded from density calculations as percentage of image size.}

\item{iso_blur}{Width of Gaussian filter applied to image. A value of 0 turns off blurring.}
}
\description{
This is a function to check hue values. It runs the workflow outlined in the Field Methods paper.
}
