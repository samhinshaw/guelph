context("Making a Frequency Table")

test_that("A Frequency Table is Made", {
    x <- c('a', 'b', 'a', 'b', 'b', 'b', 'c')
    y <- c('a', 'b', 'c')
    z <- c(2, 4, 1)

    expect_identical(freq_out(x), cbind(y, z) %>% as.data.frame())
})

