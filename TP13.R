# visualisation.R

# Charger les données mtcars
data(mtcars)

# Configurer les paramètres de la fenêtre graphique
par(mfrow = c(2, 2))  # Diviser la fenêtre en une grille 2x2

# Graphique 1: Diagramme de dispersion avec une ligne de régression
plot(mtcars$wt, mtcars$mpg,
     main = "Scatter plot with regression line",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     pch = 19, col = "blue")
abline(lm(mpg ~ wt, data = mtcars), col = "red")  # Ajouter une ligne de régression

# Graphique 2: Boîtes à moustaches pour mpg par cylindre
boxplot(mpg ~ cyl, data = mtcars,
        main = "Boxplot of MPG by Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = c("orange", "yellow", "lightgreen"))

# Graphique 3: Histogramme de la distribution de mpg
hist(mtcars$mpg, breaks = 10, col = "lightblue",
     main = "Histogram of MPG",
     xlab = "Miles per Gallon")

# Graphique 4: Diagramme de dispersion avec différentes couleurs et tailles
plot(mtcars$hp, mtcars$mpg,
     main = "Scatter plot by horsepower",
     xlab = "Horsepower",
     ylab = "Miles per Gallon",
     pch = 19, col = mtcars$cyl, cex = mtcars$wt/3)
legend("topright", legend = unique(mtcars$cyl), col = unique(mtcars$cyl), pch = 19,
       title = "Cylinders")