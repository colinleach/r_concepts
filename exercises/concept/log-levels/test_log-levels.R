source("./log-levels.R")
library(testthat)

# message

test_that("Error message", {
  msg <- "[ERROR]: Stack overflow"
  expect_equal(message(msg), "Stack overflow")
})

test_that("Warning message", {
  msg <- "[WARNING]: Disk almost full"
  expect_equal(message(msg), "Disk almost full")
})

test_that("Info message", {
  msg <- "[INFO]: File moved"
  expect_equal(message(msg), "File moved")
})

test_that("Message with leading and trailing white space", {
  msg <- "[WARNING]:   \tTimezone not set  \r\n"
  expect_equal(message(msg), "Timezone not set")
})

# log_level

test_that("Error log level", {
  msg <- "[ERROR]: Disk full"
  expect_equal(log_level(msg), "error")
})

test_that("Warning log level", {
  msg <- "[WARNING]: Unsafe password"
  expect_equal(log_level(msg), "warning")
})

test_that("Info log level", {
  msg <- "[INFO]: Timezone changed"
  expect_equal(log_level(msg), "info")
})

# reformat

test_that("Warning reformat", {
  msg <- "[WARNING]: Decreased performance"
  expect_equal(reformat(msg), "Decreased performance (warning)")
})

test_that("Info reformat", {
  msg <- "[INFO]: Disk defragmented"
  expect_equal(reformat(msg), "Disk defragmented (info)")
})

test_that("Reformat with leading and trailing white space", {
  msg <- "[ERROR]: \t Corrupt disk\t \t \r\n"
  expect_equal(reformat(msg), "Corrupt disk (error)")
})
