#' join_emissions uses dummy data
#'
#' Join dummy emissions to df
#' @param df The traffic data dataframe
#' @return The joined dataset
#' @examples
#' df1 <- join_emissions(df = trafficdata1);
#' df2 <- join_emissions(df = trafficdata2);
#' @export

join_emissions <- function(df) {
  db_emis <- read.csv("https://raw.githubusercontent.com/AndyDBrown/TestPackage/main/R/data/db_emis.csv")
  db_emis <- db_emis[,-1]
  joined <- dplyr::left_join(df,db_emis, by = "ID")
  return(joined)
}

