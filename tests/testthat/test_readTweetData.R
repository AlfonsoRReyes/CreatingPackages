context("readTweetData tests")

test_that("readTweetData properties data.frame", {
  # compare dimensions, names, class, size DF in bytes, size attributes in bytes
  baseLoc <- system.file(package="ismbTweetAnalysis")
  extPath <- file.path(baseLoc, "extdata")

  ismb <- readTweetData(file.path(extPath, "ismb.txt"), "ismb")
  ismb2014 <- readTweetData(file.path(extPath, "ismb2014.txt"), "ismb2014")

  expect_equal(dim(ismb2014), c(243, 5))
  expect_equal(names(ismb2014), c("text", "created", "id", "screenName", "hashSearch"))
  expect_equal(class(ismb2014), "data.frame")
  expect_equal(as.double(object.size(ismb2014)), 55560)
  expect_equal(as.double(object.size(attributes(ismb2014))), 1872)
})
