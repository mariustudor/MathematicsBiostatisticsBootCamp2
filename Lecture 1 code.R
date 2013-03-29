## R Code for the standard normal

qnorm(.95)


xval <- seq(-3.2, 3.2, length = 1000)
yval<- dnorm(xval)

plot(xval, yval, type = "l", axes = TRUE, frame = FALSE, lwd = 3, xlab = "", ylab = "")
x <- seq(qnorm(.95), 3.2, length = 100)
polygon(c(x, rev(x)),c(dnorm(x), rep(0, length(x))), col = "salmon")
text(mean(x), mean(dnorm(x))+.02, "5%", cex = 2)
text(qnorm(.95), .01, "1.645", cex = 2)


plot(xval, yval, type = "l", axes = TRUE, frame = FALSE, lwd = 3, xlab = "", ylab = "")
x <- seq(qnorm(.975), 3.2, length = 100)
polygon(c(x, rev(x)),c(dnorm(x), rep(0, length(x))), col = "salmon")
text(mean(x), mean(dnorm(x))+.02, "2.5%", cex = 2)
text(qnorm(.975), .01, "1.96", cex = 2)
x <- seq(-3.2, qnorm(.025),length = 100)
polygon(c(x, rev(x)),c(dnorm(x), rep(0, length(x))), col = "salmon")
text(mean(x), mean(dnorm(x))+.02, "2.5%", cex = 2)
text(qnorm(.025), .01, "-1.96", cex = 2)
text(0, dnorm(0) / 5, "95%", cex = 2)


