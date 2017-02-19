
# Vider l'environnement
rm(list = ls())

# Dossier de travail
setwd("C:\\Dev\\DataScience\\CarPricer\\dataset\\")

# Portefeuille
ptf = read.delim("carpricer.csv", sep=";", header=T)
save(ptf,file="carpricer.rda")