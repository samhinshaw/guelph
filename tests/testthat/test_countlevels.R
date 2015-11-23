context("Checking if your factor columns should be factors")

test_that("We've checked our factors", {
	y <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n')
	z <- c(2, 4, 1, 15, 66, 2, 7, 347, 1, 6, 2, 4, 2, 31) %>% as.integer()
	a <- c('once', 'twice', 'thrice', 'twice', 'twice', 'thrice', 'once',
		   'thrice', 'thrice', 'once', 'once', 'once', 'once', 'thrice')
	dataframe <- data.frame(y, z, a) %>%
		tbl_df()
	fakedata <- countlevels(dataframe)
	irisdata <- countlevels(iris)
	expect_identical(length(fakedata$`Column Name`), as.integer(2))
	expect_identical(length(irisdata$`Column Name`), as.integer(1))
	expect_that(countlevels(dataframe), is_a("data.frame"))
})

