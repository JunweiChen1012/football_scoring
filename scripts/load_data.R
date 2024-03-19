# load_data.R
load_data <- function() {
  library(engsoccerdata)
  data(england)
  return(england)
}
