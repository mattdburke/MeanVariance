p <- 0.1

ret_x_mu <- 0.2
ret_y_mu <- 0.04

ret_x_sd <- 0.18
ret_y_sd <- 0.06

w <- seq(0, 1, 0.1)

port_ret <- (ret_x_mu*w)+(ret_y_mu*(1-w))

w_1 <- w
w_2 <- (1-w)


port_sd <- sqrt(
    (w_1^2 * ret_x_sd^2) +
    (w_2^2 * ret_y_sd^2) +
    (2 * w_1 * w_2 * ret_x_sd * ret_y_sd * p)
)


plot(
    port_sd, 
    port_ret, 
    xlim=c(0.05, 0.22), 
    ylim=c(0.03, 0.2),
    xlab = "Portfolio Volatility",
    ylab = "Portfolio Expected Return")