context("Coercing a Factor in a data.frame to a Character")

test_that("factorchars coerces a factor", {
    y <- c('a', 'b', 'c')
    z <- c(2, 4, 1) %>% as.integer()
    dataframe <- data.frame(y, z) %>%
        tbl_df()
    check <- data.frame(y, z, stringsAsFactors = FALSE) %>%
        tbl_df()

    expect_identical(factorchars(dataframe, "y"), check)
    expect_that(factorchars(dataframe, "y"), is_a("tbl_df"))
    expect_identical(ncol(factorchars(dataframe, "y")), as.integer(2))
})
