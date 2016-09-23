# BSD_2_clause

#' County-level occurrence of ESA-listed species
#'
#' The most-refined occurrence data available from the Fish and Wildlife Service
#' (FWS) for most species listed under the US Endangered Species Act (ESA) is
#' county-level data. This data was scraped from FWS's \href{http://ecos.fws.gov}{ECOS website}
#' and curated (checked, completed) by referencing other sources such as
#' \href{gbif.org}{GBIF} and \href{www.natureserve.org}{NatureServe}.
#'
#' @format A data frame with 24617 rows and 15 variables
#' \describe{
#' \item{\code{Scientific}}{The scientific name of the taxon}
#' \item{\code{Genus}}{The genus of the taxon}
#' \item{\code{Species}}{The specific epithet of the taxon}
#' \item{\code{Subspecies}}{The sub-specific epithet of the taxon}
#' \item{\code{Common}}{The common name of the taxon, if available}
#' \item{\code{Common_group}}{The broad group common name, if available}
#' \item{\code{Common_specific}}{The specific common name, if available}
#' \item{\code{Common_alt}}{An alternate common name, if available}
#' \item{\code{STATEFP}}{The two-digit state FIPS code}
#' \item{\code{COUNTYFP}}{The three-digit county FIPS code}
#' \item{\code{County_name}}{Text name of the county of occurrence}
#' \item{\code{State_abbrev}}{Abbreviation of the State of occurrence}
#' \item{\code{State_name}}{Text name of the State of occurrence}
#' \item{\code{COUNTYNS}}{The 6- to 7-digit county NS code}
#' \item{\code{GEOID}}{The 6- to 7-digit county NS code}
#' }
#' @source Scraped from \href{http://ecos.fws.gov}{FWS's ECOS website}.
"esacounties"
