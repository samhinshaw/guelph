context("Making a Frequency Table")

test_that("A Frequency Table is Made", {
    x <- factor(c('a', 'b', 'a', 'b', 'b', 'b', 'c'))
    y <- c('a', 'b', 'c')
    z <- c(2, 4, 1) %>% as.integer()
    check <- data.frame(y, z) %>%
        tbl_df()
    colnames(check)[1] <- "x"
    colnames(check)[2] <- "n"

    expect_identical(freq_out(x), check)
    expect_that(freq_out(x), is_a("tbl_df"))
    expect_identical(ncol(freq_out(x)), as.integer(2))
})
