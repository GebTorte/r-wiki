library(ggplot2)

# open x11 session and plot text
x11()
x <- data.frame(x=1, y=1, label="ggplot2 intro @ EAGLE")
ggplot(data=x, aes(x=x, y=y)) + geom_text(aes(label=label), size=15)

# creating dummy data
x1 <- rnorm(1000, 0, 1)
x2 <- rnorm(1000, 5, 10)
x3 <- rep(c("catA", "catB", "catB", "catC", "catC", "catC"), 200)[1:1000]
x4 <- factor(rep(c("yes", "no"), 500))
df <- data.frame(a=x1, b=x2, c=x3, d=x4)

# point plot
ggplot(df, aes(a,b, color=c)) + geom_point(alpha=0.5) + labs(title="forst plot", x="xaxis \n and new line")

#histogram
ggplot(df, aes(a)) + geom_histogram(color="white", binwidth = 1)


# density
ggplot(df, aes(a)) + geom_density()


# combined
ggplot(
  df
) + geom_histogram(
  aes(a, after_stat(density), fill="blue", color="darkgrey")
) + geom_density(
  aes(a, after_stat(density)), colour="yellow" 
) + geom_rug(aes(a))


# plot just count statistics 
ggplot(df, aes(c, color=c)) + geom_point(stat="count", size=4)

# flipped bar chart
ggplot(df) + geom_bar(aes(c)) + coord_flip()

ggplot(df, aes(d, fill=c)) + geom_bar(position="dodge") + scale_fill_grey()


# boxplot
ggplot(df, aes(d, a)) + geom_boxplot() + geom_jitter(alpha=.5, width=.3, color="blue")

# boxplot with cut continuous values
ggplot(
  df, aes(a, b)
) + geom_boxplot(
  aes(group=cut_width(a, .5)), outlier.alpha=.1
) + geom_jitter(
  width=.02, size=0.7, alpha=.5, color="blue"
)


# facet plot
ggplot(df, aes(c)) + geom_bar() + facet_grid(d ~ .)


# custom theme
ggplot() + geom_point(data=df, aes(a, b, colour=c)) + facet_grid(a~b) + ggtitle("my chart") + theme(plot.title=element_text(angle=1, size=22, colour="hotpink")) + scale_colour_discrete(name="type")




df <- read.csv("~/r-projects/intro_to_programming/data/Steigerwald.csv", sep=";")

ggplot(df, aes(x=L8.ndvi, y=L8.savi)) + geom_point()

# adding color fade and smoothed lines
ggplot(df, aes(x=L8.ndvi, y=L8.savi, colour=SRTM)) + geom_point() + geom_smooth()


# split by landcover class
ggplot(df, aes(x=L8.ndvi, y=L8.savi, colour=SRTM)) + geom_point() + geom_smooth() + facet_wrap(~LCname)


ggplot(df, aes(x=LCname, y=L8.savi, colour=SRTM)) + geom_jitter(aes(alpha=SRTM, size=TimeScan.NDVIsd, colour=L8.ndvi)) + geom_boxplot(alpha=0.5)


ggplot(df, aes(x=L8.ndvi, y=L8.savi)) + geom_point(aes(colour=LCname), size=2) + facet_grid(. ~ LCname)
