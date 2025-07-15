month <- c("January",
           "February",
           "March",
           "April",
           "May",
           "June",
           "July",
           "August",
           "September",
           "October",
           "November",
           "December")

month <- factor(month, levels = month)
month_numeric <- as.numeric(month)  # numeric codes 1 to 12
# makeing this month_numeric
# To preseve the orignal month names and label them later

delhi_temp <- c(13.5,
                16.9,
                22.5,
                29.2,
                32.7,
                33.0,
                29.9,
                28.7,
                27.8,
                25.4,
                20.5,
                15.4)
mumbai_temp <- c(25, 26, 28, 30, 32, 30, 28, 28, 28, 29, 27, 25)

new_york_temp <- c(0.6,
                   2.2,
                   6.7,
                   12.2, 17.8, 23.3, 25.6, 24.4, 20.0, 13.9, 8.3, 2.8)


d1 <- data.frame(month = month, delhi_temp = delhi_temp)

d2 <- data.frame(month = month, mumbai_temp = delhi_temp)

d3 <- data.frame(month = month, new_york_temp = new_york_temp)



# Plotting average monthly temperatures for Delhi, Mumbai, and New York
par(mfrow = c(3, 1))
plot(month_numeric, d1$delhi_temp,
     type = "b",
     xlab = "Month",
     ylab = "Avg Temperature(°C)",
     main = "Average Monthly Temperature in Delhi",
     col = "red")
axis(1, at = 1:12, labels = month, las = 2)
axis(2, at = delhi_temp, labels = delhi_temp, las = 1)
plot(month_numeric, d2$mumbai_temp,
     type = "b",
     xlab = "Month",
     ylab = "Avg Temperature(°C)",
     main = "Average Monthly Temperature in Mumbai",
     col = "red")
axis(1, at = 1:12, labels = month, las = 2)
axis(2, at = mumbai_temp, labels = mumbai_temp, las = 1)
plot(month_numeric, d3$new_york_temp,
     type = "b",
     xlab = "Month",
     ylab = "Avg Temperature(°C)",
     main = "Average Monthly Temperature in New York",
     col = "red")
axis(1, at = 1:12, labels = month, las = 2)
axis(2, at = new_york_temp, labels = new_york_temp, las = 1)
par(mfrow = c(1, 1))
