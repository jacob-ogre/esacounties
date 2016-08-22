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
  return(dplyr::filter(esacounties, Scientific == species))
}

#' List species found in a county or counties
#'
#' @param fips FIPS code(s) for the county to query
#' @param state Either a state name or abbreviation for the query
#' @param county Name of the county for the query
#' @return A tibble of state & county-level occurrence data
#' @seealso \link{get_counties}
#' @export
#' @examples
#' get_species(state = "VA", county = "Clarke")
#' get_species(fips = "48281")
get_species <- function(fips = "", state = "", county = "") {
  if(length(fips) > 1) {
    res <- dplyr::filter(esacounties, GEOID %in% fips)
  } else if(length(fips) == 1 & fips != "") {
    res <- dplyr::filter(esacounties, GEOID == fips)
  } else if (state != "" & county != "") {
    if(nchar(state) == 2) {
      res <- dplyr::filter(esacounties,
                           State_abbrev == state,
                           County_name == county)
    } else {
      res <- dplyr::filter(esacounties,
                           State_name == state,
                           County_name == county)
    }
  } else {
    stop("Either ≥ 1 fips code or a state-county pair are required.")
  }
  return(res)
}
