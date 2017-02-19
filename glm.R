## =======================================================
## Liste des champs
## =======================================================
## MARQUE             - CAT - 
## MODELE             - CAT - 
## VARIANTE           - STR - 
## ANNEE              - CAT - Année de mise en circulation
## CIRCULATION        - DTE - Date de mise en circulation
## CARBURANT          - CAT - 
## BOITE              - CAT - Boite de vitesse : MAN/AUT
## PORTES             - CAT - Nombre de portes : 3/5
## COULEUR            - CAT - 
## KILOMETRAGE        - CON - 
## GRANTIE_MOIS       - CON - 
## PREMIERE_MAIN_FLG  - CAT - Première main?
## PAYS               - CAT - 
## ZIP                - CAT - 
## VILLE              - CAT - 
## PRIX *             - CON - 
## =======================================================

source("data.R")

table(ptf$MARQUE)

#ptf$MODELE = as.factor(ptf$MODELE)
ptf$BOITE = as.factor(ptf$BOITE)
#ptf$MARQUE = as.factor(ptf$MARQUE)
#ptf$ANNEE = as.factor(ptf$ANNEE)
#ptf$CARBURANT = as.factor(ptf$CARBURANT)
#ptf$PREMIERE_MAIN_FLG = as.factor(ptf$PREMIERE_MAIN_FLG)
#ptf$PAYS = as.factor(ptf$PAYS)
#ptf$PORTES = as.factor(ptf$PORTES)

prix.eqn <- "PRIX ~ KILOMETRAGE + PORTES + ANNEE + GARANTIE_MOIS + PORTES + BOITE" # + MODELE + KILOMETRAGE + GARANTIE_MOIS" # + ANNEE + CARBURANT + PREMIERE_MAIN_FLG + PAYS + PORTES"
prix.formula <- as.formula(prix.eqn)
fit.glm  <- glm(prix.formula,data=ptf, family = gaussian(link="log"))


summary(fit.glm)


