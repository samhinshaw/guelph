context("Counting how many levels your factor has")

test_that("you've counted your levels", {
	y <- c('a', 'b', 'c')
	z <- c(2, 4, 1) %>% as.integer()
	dataframe <- data.frame(y, z) %>%
		tbl_df()

	expect_identical(countlevels(dataframe, "y"), as.integer(3))
	expect_that(countlevels(dataframe, "y"), is_a("integer"))
	expect_lte(countlevels(dataframe, "y"), length(dataframe[["y"]]))
})

