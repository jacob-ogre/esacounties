# BSD_2_clause

#' List counties where a species is found
#'
#' @param species Scientific name of the species to query
#' @return A tibble of state & county-level occurrence data
#' @seealso \link{get_species}
#' @export
#' @examples
#' get_counties("Ursus horribilis")
get_counties <- function(species) {

}

#' List species found in a county
#'
#' @param fips FIPS code for the county to query
#' @return A tibble of state & county-level occurrence data
#' @seealso \link{get_counties}
#' @export
#' @examples
#' get_species(state = "VA", county = "Clarke")
get_species <- function(fips = "", state = "", county = "") {
  if(fips != "") {
    res <- dplyr::filter(esacounties, )
  }
}
