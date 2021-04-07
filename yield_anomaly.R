#' Almond Yield Anomaly
#' 
#' function to calculate the almond yield anomaly
#' @param temp_min the average minimum temperature in February (for one year)
#' @param precip the total January precipitation
#' 
#' @authors
#' Pat Byrne, Hannah Garcia, and Yani Pohl 
#' @source
#' Lobell, D. B., Field, C. B., Cahill, K. N., & Bonfils, C. (2006). Impacts of future climate change on California perennial crop yields: Model projections with climate and crop uncertainties. Agricultural and Forest Meteorology, 141(2–4), 208–218. https://doi.org/10.1016/j.agrformet.2006.10.006


yield_anomaly = function(temp_min, precip, t1=-0.015, t2=-0.0046, p1=-0.07, p2=0.0043, inter=0.28) {
  
  mean_deviation= t1*temp_min + t2*temp_min^2 + p1*precip + p2*precip^2 + inter
  return(mean_deviation)
}

#instead of temp_min and precip, you would put in one dataframe. and the df has columns temp_min and precip. Within the function, it would have summarize/other function to aggregate the data. 