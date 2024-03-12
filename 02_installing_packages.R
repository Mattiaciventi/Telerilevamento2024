# Installo nuovo pacchetti in R

# tutte le volte che voglio uscire da R x installare pacchetti esterni dal CRAN devo usare ""
install.packages("terra")
#per testare se il pacchetto che andrò ad usare gia è caricato uso library
library(terra)

# per utilizzare la funzione install.github per prendere i pacchetti da github dobbiamo installare in precedenza devtools. quindi install.github dipende da da devtools
# devtools è dentro il cran
#una volta installato devtools, attraverso la funzione install.github installo il pacchetto imagery.
install.packages("devtools")
library(devtools)
#installare il pacchetto imageRy da github
devtools::install_github("ducciorocchini/imageRy") #:: per far capire da dove viene il pacchetto. stiamo uscendo da R e quindi "".
library(imageRy)
