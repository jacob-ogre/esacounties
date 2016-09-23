context("Counties")

grizz <- get_counties("Ursus arctos horribilis")
black <- get_counties("Ursus americanus")
LAblack <- get_counties("Ursus americanus luteolus")

test_that("get_counties returns the correct data", {
  expect_is(grizz, "tbl_df")
  expect_equal(grizz$GEOID,
               esacounties$GEOID[which(esacounties$Scientific ==
                                       "Ursus arctos horribilis")])
})

test_that("get_counties is flexible to scientific name input", {
  expect_equal(grizz, get_counties("ursus arctos horribilis"))
  expect_equal(LAblack$Scientific %in% black$Scientific,
               rep(TRUE, nrow(LAblack)))
})

