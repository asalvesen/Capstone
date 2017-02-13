con <- file("en_US.twitter.txt", "r")
readLines(con, 1) ## Read the first line of text
readLines(con, 1) ## Read the next line of text
readLines(con, 5) ## Read in the next 5 lines of text
close(con) ## It's important to close the connection when you are done


con_news <- file("capstone/final/en_US/en_US.news.txt", "r")
set.seed(1108)
news <- readLines(con_news)
close(con_news)
sub_news <- news[rbinom(
        n = length(news) * 0.3,
        size = length(news),
        prob = 0.5
        )]
writeLines(sub_news, con = "capstone/final/en_US/en_US.sub_news.txt")

con_blogs <- file("capstone/final/en_US/en_US.blogs.txt", "r")
set.seed(1108)
blogs <- readLines(con_blogs)
close(con_blogs)
sub_blogs <- blogs[rbinom(
        n = length(blogs) * 0.3,
        size = length(blogs),
        prob = 0.5
)]
writeLines(sub_blogs, con="capstone/final/en_US/en_US.sub_blogs.txt")

con_twitter <- file("capstone/final/en_US/en_US.twitter.txt", "r")
set.seed(1108)
twitter <- readLines(con_twitter)
close(con_twitter)
sub_twitter <- twitter[rbinom(
        n = length(twitter) * 0.3,
        size = length(twitter),
        prob = 0.5
)]
writeLines(sub_twitter, con="capstone/final/en_US/en_US.sub_twitter.txt")

twitter[c(167155, 268547, 1274086, 1759032)]
