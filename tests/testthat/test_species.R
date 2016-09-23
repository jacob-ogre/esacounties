context("Species")

test_that("get_species works with state, county input", {
  fxn_data <- get_species(state = "NY", county = "Monroe")
  tbl_sub <- which(esacounties$State_abbrev == "NY" & esacounties$County_name == "Monroe")
  expect_is(fxn_data, "tbl_df")
  expect_equal(nrow(fxn_data),length(tbl_sub))
  expect_equal(fxn_data$GEOID, esacounties$GEOID[tbl_sub])
}
)

test_that("get_species works with FIPS input", {
  fxn_data <- get_species(fips = "48395")
  tbl_sub <- which(esacounties$GEOID == "48395")
  expect_is(fxn_data, "tbl_df")
  expect_equal(nrow(fxn_data),length(tbl_sub))
  expect_equal(fxn_data$GEOID, esacounties$GEOID[tbl_sub])
  expect_error(get_species(fips = ""))
}
)

