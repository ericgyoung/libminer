test_that("lib_summary returns expected result", {
  ### save output of function to test
  result = lib_summary()
  ### tests ###
  ### class of returned object
  expect_s3_class(result, "data.frame")
  ### number of columns, one for number and one for library
  expect_equal(ncol(result), 2)
  ### names of columns
  expect_equal(names(result), c("Library", "n_packages"))
  ### types of columns
  expect_type(result$Library, "character")
  expect_type(result$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"), "unused arg")
})
