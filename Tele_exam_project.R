# carico pacchetto raster per gestire i dati raster
library(raster)
# carico pacchetto terra per lavorare con immagini satellitari
library(terra)
# carico pacchetto imageRy per manipolare le immagini
library(imageRy)
# carico pacchetto ggplot2 per creare dei grafici
library(ggplot2)
# carico pacchetto patchwork per per combinare i grafici ggplot2
library(patchwork)
# carico pacchetto viridis per caricare palette di colori utili per rappresentare dati visivamente
library(viridis)
# per facilitare la visualizzazione di analisi statistiche multivariate
library(ggfortify)
library(factoextra)

# WATER 2017
# elenco tutti i file e le directory presenti nel percorso specificato (2017)
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017")
# imposto la directory di lavoro corrente
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017")
# carico la banda 02 dell'immagine Sentinel-2 del 2017 come oggetto <- rast 
Band02_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B02_(Raw).tiff")
# carico la banda 03 dell'immagine Sentinel-2 del 2017 come oggetto <- rast 
Band03_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B03_(Raw).tiff")
# carico la banda 04 dell'immagine Sentinel-2 del 2017 come oggetto <- rast 
Band04_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B04_(Raw).tiff")
# carico la banda 08 dell'immagine Sentinel-2 del 2017 come oggetto <- rast 
Band08_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B08_(Raw).tiff")
# carico la banda 8A dell'immagine Sentinel-2 del 2017 come oggetto <- rast
Band8A_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B8A_(Raw).tiff")
# carico la banda 12 dell'immagine Sentinel-2 del 2017 come oggetto <- rast
Band12_2017 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017/2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_B12_(Raw).tiff")

# 2019
# elenco i file per il 2019
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019")
# cambia la directory di lavoro nel 2019
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019") 
# carico tutte le bande come precedentemente fatto per il 2017
Band02_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B02_(Raw).tiff")
Band03_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B03_(Raw).tiff")
Band04_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B04_(Raw).tiff")
Band08_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B08_(Raw).tiff")
Band8A_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B8A_(Raw).tiff")
Band12_2019 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019/2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_B12_(Raw).tiff")

# 2021
# elenco i file per il 2021
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021")
# cambia la directory di lavoro nel 20121.
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021") 
# carico le bande
Band02_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B02_(Raw).tiff")
Band03_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B03_(Raw).tiff")
Band04_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B04_(Raw).tiff")
Band08_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B08_(Raw).tiff")
Band8A_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B8A_(Raw).tiff" )
Band12_2021 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021/2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_B12_(Raw).tiff")

# 2024
# elenco i file per il 2024
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024")
# cambia la directory di lavoro nel 2024.
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024") 
# carico le bande
Band02_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B02_(Raw).tiff")
Band03_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B03_(Raw).tiff")
Band04_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B04_(Raw).tiff")
Band08_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B08_(Raw).tiff")
Band8A_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B8A_(Raw).tiff")
Band12_2024 <- rast("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024/2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_B12_(Raw).tiff")

dev.off()

# ANALISI 2017
# confronto l'immagine NDWI (indice utilizzato per osservare l'acqua nelle immagini) con l'immagine true color
# così posso capire meglio come classificare le diverse tipologie di superfici.
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017")
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2017")
# carico il file NDWI del 2017 come oggetto rast (dal pacchetto terra).
wat2017NDWI <- rast("2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_NDWI.tiff" )
# visualizzo l'immagine NDWI.
plot(wat2017NDWI)
# carico l'immagine a colori reali (True Color) del 2017 come oggetto raster.
wat2017trcol <- rast("2017-04-20-00_00_2017-04-20-23_59_Sentinel-2_L2A_True_color.tiff")
plot(wat2017trcol)
# per avere un'ulteriore conferma della differenza tra la vegetazione e il suolo nudo mi calcolo l'indice di ndvi
# per identificare superfici coperte da vegetazione, inserendo un valore soglia di 0.3
NDVI2017 <- (Band08_2017 - Band04_2017) / (Band08_2017 + Band04_2017)
summary(NDVI2017)
veg_mask2017 <- NDVI2017 > 0.3
plot(veg_mask2017, main="Maschera Vegetazione 2017")
# CLASSIFICAZIONE E CALCOLO PROPORZIONE
# classifco l'immagine NDWI in 4 classi
# l'opzione "seed = TRUE" garantisce che i risultati siano riproducibili, ossia che ogni volta che esegui la classificazione otterrai lo stesso risultato.
# definisco una scala di colori
class_colors <- c("gray", "green", "blue", "brown")
wat2017c <- im.classify(wat2017NDWI, 4, seed = TRUE)
plot(wat2017c, col = class_colors, main = "Classificazione 2017")
par(mfrow= c(1,2))
# 1=dry salt pan,  2=vegetation,  3=water; 4=soil
# calcolo la frequenza di ciascun valore nel raster classificato. 
fwat2017c <- freq(wat2017c)
fwat2017c
# 1=dry salt pan=285374;  2=vegetation= 966116;  3=water= 316379;  4=soil= 809631; 
# calcolo il numero totale di celle del raster classificato.
# ncell() mi restituisce il numero di celle in un raster
tot2017 <- ncell(wat2017c)
tot2017
# calcolo la proporzione di ciascuna classe rispetto al totale delle celle
prop2017 = fwat2017c / tot2017
prop2017
# dry salt pan= 12%; vegetation=40,6%; water=13,3%; soil=34,1%
plot(wat2017c, col = class_colors, main = "Classificazione 2017")

# Analisi 2019
# richiamo la cartella 2019
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019") 
# recupero la lista degli elementi dentro la cartella 2019
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2019")
# aggiungo raster dell'immagine a colori reali e ndwi
wat2019trcol <- rast("2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_True_color.tiff")
wat2019NDWI <- rast("2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_NDWI.tiff" )
par(mfrow = c(1,2))
plot(wat2019NDWI)
plot(wat2019trcol)
dev.off()
# in questo caso ho aggiunto anche l'immagine SWIR così da riconoscere chiaramente vegetazione e suolo nudo
wat2019SWIR<- rast("2019-04-20-00_00_2019-04-20-23_59_Sentinel-2_L2A_SWIR.tiff" )
plot(wat2019SWIR)
#NDVI
NDVI2019 <- (Band08_2019 - Band04_2019) / (Band08_2019 + Band04_2019)
summary(NDVI2019)
# ho abbassato il valore dell'indice perchè 0.3 era una soglia troppo alta per un'annata secca come quella del 2019
veg_mask2019 <- NDVI2019 > 0.2
plot(veg_mask2019, main="Maschera Vegetazione 2019")
# classificazione
class_colors <- c("gray", "blue", "brown", "green")
wat2019c <- im.classify(wat2019NDWI,4, seed = TRUE)
plot(wat2019c, col = class_colors, main = "Classificazione 2019")
# 1=dry salt pan; 2= water; 3= soil; 4=vegetation
# frequenze
fwat2019c <- freq(wat2019c)
fwat2019c
# 1=dry salt pan= 359922 (15,1%); 2=water= 223547 (9,4%); 3=soil= 926418 (39%); 4=vegetation= 867613 (36,5%).
# proporzioni
tot2019 <- ncell(wat2019c)
tot2019
prop2019 = fwat2019c / tot2019
prop2019

# analisi 2021
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021") 
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2021")
wat2021NDWI <- rast("2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_NDWI.tiff")
wat2021trcol <- rast("2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_True_color.tiff")
wat2021swir <- rast("2021-04-19-00_00_2021-04-19-23_59_Sentinel-2_L2A_SWIR.tiff")
par(mfrow=c(1,2))
plot(wat2021trcol)
plot(wat2021NDWI)
dev.off()
# NDVI
NDVI2021 <- (Band08_2021 - Band04_2021) / (Band08_2021 + Band04_2021)
summary(NDVI2021)
veg_mask2021 <- NDVI2021 > 0.3
plot(veg_mask2021, main="Maschera Vegetazione 2021")
# classificazione
class_colors <- c("gray", "blue", "brown", "green")
wat2021c <- im.classify(wat2021NDWI, 4, seed = TRUE)
plot(wat2021c, col = class_colors, main = "Classificazione 2021")
# 1= dry salt pan; 2= water; 3=soil; 4=vegetation
# frequenze
fwat2021c <- freq(wat2021c)
fwat2021c
# dry salt pan= 334633 (14,1%); water= 228097 (9,6%); vegetation= 1023641 (43%); soil= 791129 (33,3%)
# proporzioni
tot2021 <- ncell(wat2021c)
tot2021
prop2021 = fwat2021c / tot2021
prop2021

# ANALISI 2024
setwd("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024") 
list.files("C:/Users/Mattia/Desktop/mattia/università/SGN/Telerilevamento/water/2024")
wat2024NDWI <- rast("2024-04-23-00_00_2024-04-23-23_59_Sentinel-2_L2A_NDWI.tiff" )
plot(wat2024NDWI)
# NDVI
NDVI2024 <- (Band08_2024 - Band04_2024) / (Band08_2024 + Band04_2024)
summary(NDVI2024)
veg_mask2024 <- NDVI2024 > 0.3
plot(veg_mask2024, main="Maschera Vegetazione 2024")
#classify
class_colors <- c("blue", "green", "gray", "brown")
wat2024c <- im.classify(wat2024NDWI, 4, seed = TRUE)
plot(wat2024c, col = class_colors, main = "Classificazione 2024")
par(mfrow = c(1,2))
# 1=water; 2=vegetation; 3=dry salt pan; 4=soil
# frequenze
fwat2024c <- freq(wat2024c)
fwat2024c
# soil=778768 (32,8%); vegetation=1021826 (43%); water=153318 (6,4%); dry salt pan= 423588 (17,8%)
# proporzioni
tot2024 <- ncell(wat2024c)
tot2024
prop2024 = fwat2024c / tot2024
prop2024

# visualizzazione PAR con le immgani NDWI scaricate da sentinel-2
par(mfrow = c(2,2))
plot(wat2017NDWI, main="NDWI 2017")
plot(wat2019NDWI, main="NDWI 2019")
plot(wat2021NDWI, main="NDWI 2021")
plot(wat2024NDWI, main="NDWI 2024")

dev.off()

# costruisco un dataframe con le % delle diverse superfici classificate.
class <- c("dry salt pan", "water", "vegetation", "soil")
d2017 <- c(12, 13.3, 40.6, 34.1)
d2019 <- c(15.1, 9.4, 36.5, 39)
d2021 <- c(14.1, 9.6, 43, 33.3)
d2024 <- c(17.8, 6.4, 43, 32.8)
# crea un dataframe combinando il vettore class e le % di ciascuna superficie.
tabout <- data.frame(class, d2017, d2019, d2021, d2024)
tabout

# ggplot per creare un grafico a barre per i dati del 2017
# aes <- specifica l'estetica del grafico: x=class <- sull'asse delle x ci sono categorie di superfici classificate; y= d20.. indica che altezze barre basate su %; fill=class <- assegna colori diversi in base a suoerficie. 
# geom_bar(stat="identity") <- crea grafico a barre, dove h barre date dai valori in y
# ylab("% of coverage 201..) imposta l'etichetta dell'asse y come "% of coverage 20.." per indicare che le barre rappresentano percentuali di copertura per quell'anno.
p1 <-ggplot(tabout, aes(x=class, y=d2017, fill=class)) + geom_bar(stat="identity") + ylab("% of coverage 2017")
p2 <-ggplot(tabout, aes(x=class, y=d2019, fill=class)) + geom_bar(stat="identity") + ylab("% of coverage 2019")
p3 <-ggplot(tabout, aes(x=class, y=d2021, fill=class)) + geom_bar(stat="identity") + ylab("% of coverage 2021")
p4 <-ggplot(tabout, aes(x=class, y=d2024, fill=class)) + geom_bar(stat="identity") + ylab("% of coverage 2024")

#Patchwork
p1+p2+p3+p4

dev.off()


# MNDWI
# MNDWI  è un indice utilizzato per identificare le aree d'acqua su immagini satellitari, modificato rispetto all'NDWI classico.
# valori positivi indicano la presenza di acqua.
# valori negativi o vicini a zero indicano terreno asciutto o vegetazione.

# 2017
mndwi2017 <- (Band03_2017 - Band12_2017) / (Band03_2017 + Band12_2017)
summary(mndwi2017)
# visualizzo il raster con una scala cromatica che va dal rosso (terreni asciutti) al blu (acqua), con il bianco per le aree di transizione.
plot(mndwi2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2017")
# incremento fino a 0.3 per ridurre i falsi positivi in un'area ricoperta da molta acqua.
mask_acqua2017 <- mndwi2017 > 0.3
# Visualizzare la maschera
plot(mask_acqua2017, main="Maschera Acqua 2017",  legend=TRUE)
#questa riga calcola il numero totale di pixel classificati come "acqua" nella maschera
n_pixel_acqua_2017mndwi <- sum(mask_acqua2017[], na.rm = TRUE)
# Visualizzo il numero di pixel con acqua
totmndwi <- ncell(mndwi2017)
totmndwi
# calcolo una % dei pixel mascherati sul totale dei pixeò nell'immagine che mi indicano zone d'acqua
propmndwi2017 <- n_pixel_acqua_2017mndwi/totmndwi
propmndwi2017 #18.36%

# 2019
mndwi2019 <- (Band03_2019 - Band12_2019) / (Band03_2019 + Band12_2019)
summary(mndwi2019)
plot(mndwi2019, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2019")
mask_acqua2019 <- mndwi2019 > 0
plot(mask_acqua2019, main="Maschera Acqua 2019",  legend=TRUE)
n_pixel_acqua_2019mndwi <- sum(mask_acqua2019[], na.rm = TRUE)
totmndwi <- ncell(mndwi2019)
totmndwi
propmndwi2019 <- n_pixel_acqua_2019mndwi/totmndwi
propmndwi2019 #4.1%

# 2021
mndwi2021 <- (Band03_2021 - Band12_2021) / (Band03_2021 + Band12_2021)
summary(mndwi2021)
plot(mndwi2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2021")
mask_acqua2021 <- mndwi2021 > 0
plot(mask_acqua2021, main="Maschera Acqua 2021",  legend=TRUE)
n_pixel_acqua_2021mndwi <- sum(mask_acqua2021[], na.rm = TRUE)
totmndwi <- ncell(mndwi2021)
totmndwi
propmndwi2021 <- n_pixel_acqua_2021mndwi/totmndwi
propmndwi2021 #14.3%

# 2024
mndwi2024 <- (Band03_2024 - Band12_2024) / (Band03_2024 + Band12_2024)
summary(mndwi2024)
plot(mndwi2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2024")
mask_acqua2024 <- mndwi2024 > 0
plot(mask_acqua2024, main="Maschera Acqua 2024",  legend=TRUE)
n_pixel_acqua_2024mndwi <- sum(mask_acqua2024[], na.rm = TRUE)
totmndwi <- ncell(mndwi2024)
totmndwi
propmndwi2024 <- n_pixel_acqua_2024mndwi/totmndwi
propmndwi2024 #7.2%

dev.off()

# li posiziono tutti insieme
par(mfrow = c(2,2),  mar = c(0.5, 4, 4, 8))
plot(mndwi2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2017")
plot(mndwi2019, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2019")
plot(mndwi2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2021")
plot(mndwi2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2024")

par(mfrow = c(2,2))
plot(mask_acqua2017, main="Maschera Acqua 2017",  legend=TRUE)
plot(mask_acqua2019, main="Maschera Acqua 2019",  legend=TRUE)
plot(mask_acqua2021, main="Maschera Acqua 2021",  legend=TRUE)
plot(mask_acqua2024, main="Maschera Acqua 2024",  legend=TRUE)

dev.off()

# differenze tra gli anni per vedere e analizzare come la disponibilità del volume d'acqua sia cambiata
par(mfrow = c(2,2))
mndwi_diff <- mndwi2024 - mndwi2017
cldiff <- colorRampPalette(c("red", "white", "blue"))(100)
plot(mndwi_diff, col=cldiff, main="Differenza MNDWI 2024 - 2017")

mndwi_diff2 <- mndwi2024 - mndwi2019
cldiff2 <- colorRampPalette(c("red", "white", "blue"))(100)
plot(mndwi_diff2, col=cldiff, main="Differenza MNDWI 2024 - 2019")

mndwi_diff3 <- mndwi2024 - mndwi2021
cldiff3 <- colorRampPalette(c("red", "white", "blue"))(100)
plot(mndwi_diff3, col=cldiff, main="Differenza MNDWI 2024 - 2021")

mndwi_diff4 <- mndwi2021 - mndwi2017
cldiff4 <- colorRampPalette(c("red", "white", "blue"))(100)
plot(mndwi_diff4, col=cldiff, main="Differenza MNDWI 2021 - 2017")

dev.off()

# NDWI
# Calcolo e visualizzo l'NDWI (Normalized Difference Water Index) per i quattro anni diversi.
# per monitorare la presenza di acqua nelle immagini satellitari, sfruttando la
# riflettanza nelle bande del verde (B03) e dell'infrarosso vicino (B08).
ndwi2017 <- (Band03_2017 - Band08_2017) / (Band03_2017 + Band08_2017)
summary(ndwi2017)
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(ndwi2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2017")
ndwi_mask_2017 <- ndwi2017 > 0  # Considera valori positivi come acqua e filtro solo i pixel positivi
# Visualizza la maschera
plot(ndwi_mask_2017, main=" NDWI_Mask 2017")
# Conta i pixel con valore TRUE (possibile presenza d'acqua)
n_pixel_acqua_2017 <- sum(ndwi_mask_2017[], na.rm = TRUE)
# Visualizzo il numero di pixel con acqua
n_pixel_acqua_2017      
totndwi <- ncell(ndwi2017)
totndwi
propndwi2017 <- n_pixel_acqua_2017/totndwi
propndwi2017 #13.7%
# ndwi2019
ndwi2019 <- (Band03_2019 - Band08_2019) / (Band03_2019 + Band08_2019)
summary(ndwi2019)
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(ndwi2019, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2019")
ndwi_mask_2019 <- ndwi2019 > 0
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(ndwi_mask_2019, main=" NDWI_Mask 2019")
n_pixel_acqua_2019 <- sum(ndwi_mask_2019[], na.rm = TRUE)
n_pixel_acqua_2019      
totndwi <- ncell(ndwi2019)
totndwi
propndwi2019 <- n_pixel_acqua_2019/totndwi
propndwi2019 #10.19%
# ndwi2021
ndwi2021 <- (Band03_2021 - Band08_2021) / (Band03_2021 + Band08_2021)
summary(ndwi2021)
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(ndwi2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2021")
ndwi_mask_2021 <- ndwi2021 > 0
plot(ndwi_mask_2021, main=" NDWI_Mask 2021")
n_pixel_acqua_2021 <- sum(ndwi_mask_2021[], na.rm = TRUE)
n_pixel_acqua_2021      
totndwi <- ncell(ndwi2021)
totndwi
propndwi2021 <- n_pixel_acqua_2021/totndwi
propndwi2021 #10.16%
# ndwi2024
ndwi2024 <- (Band03_2024 - Band08_2024) / (Band03_2024 + Band08_2024)
summary(ndwi2024)
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(ndwi2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2024")
ndwi_mask_2024 <- ndwi2024 > 0
plot(ndwi_mask_2024, main=" NDWI_Mask 2024")
n_pixel_acqua_2024 <- sum(ndwi_mask_2024[], na.rm = TRUE)
n_pixel_acqua_2024      
totndwi <- ncell(ndwi2024)
totndwi
propndwi2024 <- n_pixel_acqua_2024/totndwi
propndwi2024 #7%

# WATER INDEX
# differenza tra banda del verde e banda 8A (NIR stretto)
WaterIndex2017 <- Band03_2017 - Band8A_2017
# rosso <- valori bassi (aree senza acqua); blu <- valori alti (aree con possibile frequenza acqua).
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(WaterIndex2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="Water Index 2017")
water_mask_2017 <- WaterIndex2017 > 0  # Considera valori positivi come acqua e filtro solo i pixel positivi
# Visualizza la maschera
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(water_mask_2017, main="Water Mask 2017")
# Conta i pixel con valore TRUE (possibile presenza d'acqua)
n_pixel_acqua_2017 <- sum(water_mask_2017[], na.rm = TRUE)
# Visualizzo il numero di pixel con acqua
n_pixel_acqua_2017      
totWI <- ncell(WaterIndex2017)
totWI
# calcolo una % dei pixel mascherati sul totale dei pixeò nell'immagine che mi indicano zone d'acqua
propWI2017 <- n_pixel_acqua_2017/totWI
propWI2017 #12,1%
# WI 2019
WaterIndex2019 <- Band03_2019 - Band8A_2019
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(WaterIndex2019, col=colorRampPalette(c("red", "white", "blue"))(100), main="Water Index 2019")
water_mask_2019 <- WaterIndex2019 > 0
plot(water_mask_2019, main="Water Mask 2019")
n_pixel_acqua_2019 <- sum(water_mask_2019[], na.rm = TRUE)
n_pixel_acqua_2019     
totWI <- ncell(WaterIndex2019)
totWI
propWI2019 <- n_pixel_acqua_2019/totWI
propWI2019 #5.1%
# WI 2021
WaterIndex2021 <- Band03_2021 - Band8A_2021
par(fig = c(0.1, 0.9, 0.1, 0.9))  # Riduci la dimensione dell'immagine
plot(WaterIndex2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="Water Index 2021")
water_mask_2021 <- WaterIndex2021 > 0
plot(water_mask_2021, main="Water Mask 2021")
n_pixel_acqua_2021 <- sum(water_mask_2021[], na.rm = TRUE)
n_pixel_acqua_2021      #196393
totWI <- ncell(WaterIndex2021)
totWI
propWI2021 <- n_pixel_acqua_2021/totWI
propWI2021 #8.3%
# WI 2024
WaterIndex2024 <- Band03_2024 - Band8A_2024
plot(WaterIndex2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="Water Index 2024")
water_mask_2024 <- WaterIndex2024 > 0
plot(water_mask_2024, main="Water Mask 2024")
n_pixel_acqua_2024 <- sum(water_mask_2024[], na.rm = TRUE)
n_pixel_acqua_2024     #123954
totWI <- ncell(WaterIndex2024)
totWI
propWI2024 <- n_pixel_acqua_2024/totWI
propWI2024 #5.2%

# Creazione di un dataframe per le percentuali
data <- data.frame(
  Anno = c(2017, 2019, 2021, 2024),
  Copertura_Classificazione = c(13.3, 9.4, 9.6, 6.4),
  Copertura_WaterIndex = c(12.1, 5.1, 8.3, 5.2),
  Copertura_MNDWI = c(16.1, 4.1, 14.3, 7.2),
  Copertura_NDWI = c(13.7, 10.19, 10.16, 7),
  Deviazione_Standard = c(2.052641, 2.816026, 3.156475, 1.006645)  
  
)

# grafico con il confronto degli andamenti delle diverse classificazioni fatte
print(data)
ggplot(data, aes(x = Anno)) +
  geom_line(aes(y = Copertura_Classificazione, color = "Classificazione")) +
  geom_point(aes(y = Copertura_Classificazione, color = "Classificazione")) +
  geom_line(aes(y = Copertura_NDWI, color = "NDWI")) +
  geom_point(aes(y = Copertura_NDWI, color = "NDWI")) +
  geom_line(aes(y= Copertura_MNDWI, color = "MNDWI"))  +
  geom_point(aes(y= Copertura_MNDWI, color = "MNDWI")) +
  geom_line(aes(y = Copertura_WaterIndex, color = "Water Index")) +
  geom_point(aes(y = Copertura_WaterIndex, color = "Water Index")) +
  labs(title = "Confronto della percentuale di copertura d'acqua",
       y = "Percentuale di copertura (%)",
       color = "Metodo") +
  theme_minimal()

# deviazione_standard
# 2017            2.052641
# 2019            2.816026
# 2021            3.156475
# 2024            1.006645

dev.off()

# Preparo i dati per la PCA, rimuovendo anche la colonna "deviazione_standard"
data_pca <- data[,-1]
# Scala i dati
data_pca_scaled <- scale(data_pca)
# Esegui la PCA
pca_result <- prcomp(data_pca_scaled, center = TRUE, scale. = TRUE)
# Visualizza i risultati della PCA
summary(pca_result)
# Crea un biplot per visualizzare la PCA
autoplot(pca_result, data = data, colour = 'Anno', loadings = TRUE, loadings.label = TRUE) +
  labs(title = "Biplot dell'Analisi delle Componenti Principali (PCA)",
       x = "PC1",
       y = "PC2") +
  theme_minimal()

dev.off()

# Deviazione standard MNDWI 
# Bassa deviazione standard (zone blu/verdi): indica che l'indice MNDWI è omogeneo in quell'area, quindi potrebbe trattarsi di acqua stabile o suolo asciutto senza variazioni significative.
# Alta deviazione standard (zone giallo/rosso): indica che ci sono variazioni nell'indice MNDWI, che potrebbero essere causate da transizioni tra zone d'acqua e terra, o da miscele di acqua e vegetazione.
# 2017
plot(mndwi2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2017")
sd3_mndwi2017 <- focal(mndwi2017, w = matrix(1/9, 3, 3), fun = sd)
sd7_mndwi2017 <- focal(mndwi2017, w = matrix(1/49, 7, 7), fun = sd)
sd13_mndwi2017 <- focal(mndwi2017, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_mndwi2017, col=viridis(100), main="SD MNDWI 3x3 - 2017")
plot(sd7_mndwi2017, col=viridis(100), main="SD MNDWI 7x7 - 2017")
plot(sd13_mndwi2017, col=viridis(100), main="SD MNDWI 13x13 - 2017")
#2021
plot(mndwi2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2021")
sd3_mndwi2021 <- focal(mndwi2021, w = matrix(1/9, 3, 3), fun = sd)
sd7_mndwi2021 <- focal(mndwi2021, w = matrix(1/49, 7, 7), fun = sd)
sd13_mndwi2021 <- focal(mndwi2021, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_mndwi2021, col=viridis(100), main="SD MNDWI 3x3 - 2021")
plot(sd7_mndwi2021, col=viridis(100), main="SD MNDWI 7x7 - 2021")
plot(sd13_mndwi2021, col=viridis(100), main="SD MNDWI 13x13 - 2021")
# 2024
plot(mndwi2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="MNDWI 2024")
sd3_mndwi2024 <- focal(mndwi2024, w = matrix(1/9, 3, 3), fun = sd)
sd7_mndwi2024 <- focal(mndwi2024, w = matrix(1/49, 7, 7), fun = sd)
sd13_mndwi2024 <- focal(mndwi2024, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_mndwi2024, col=viridis(100), main="SD MNDWI 3x3 - 2024")
plot(sd7_mndwi2024, col=viridis(100), main="SD MNDWI 7x7 - 2024")
plot(sd13_mndwi2024, col=viridis(100), main="SD MNDWI 13x13 - 2024")

dev.off()

# sto sottraendo la deviazione standard del MNDWI del 2017 (sd13_mndwi2017) dalla deviazione standard del MNDWI del 2024 (sd13_mndwi2024).
diffsdMNDWI <- sd13_mndwi2024 - sd13_mndwi2017
plot(diffsdMNDWI, col=viridis(100), main= "SD DIFFERENZA MNDWI24 - MNDWI17")
diffsd1MNDWI <- sd13_mndwi2024 - sd13_mndwi2021
plot(diffsd1MNDWI, col=viridis(100), main= "SD DIFFERENZA MNDWI24 - MNDWI21")

# Deviazione Standard NDWI 
# 2017
plot(ndwi2017, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2017")
sd3_ndwi2017 <- focal(ndwi2017, w = matrix(1/9, 3, 3), fun = sd)
sd7_ndwi2017 <- focal(ndwi2017, w = matrix(1/49, 7, 7), fun = sd)
sd13_ndwi2017 <- focal(ndwi2017, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_ndwi2017, col=viridis(100), main="SD NDWI 3x3 - 2017")
plot(sd7_ndwi2017, col=viridis(100), main="SD NDWI 7x7 - 2017")
plot(sd13_ndwi2017, col=viridis(100), main="SD NDWI 13x13 - 2017")
#2021
plot(ndwi2021, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2021")
sd3_ndwi2021 <- focal(ndwi2021, w = matrix(1/9, 3, 3), fun = sd)
sd7_ndwi2021 <- focal(ndwi2021, w = matrix(1/49, 7, 7), fun = sd)
sd13_ndwi2021 <- focal(ndwi2021, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_ndwi2021, col=viridis(100), main="SD NDWI 3x3 - 2024")
plot(sd7_ndwi2021, col=viridis(100), main="SD NDWI 7x7 - 2024")
plot(sd13_ndwi2021, col=viridis(100), main="SD NDWI 13x13 - 2024")
#2024
plot(ndwi2024, col=colorRampPalette(c("red", "white", "blue"))(100), main="NDWI 2024")
sd3_ndwi2024 <- focal(ndwi2024, w = matrix(1/9, 3, 3), fun = sd)
sd7_ndwi2024 <- focal(ndwi2024, w = matrix(1/49, 7, 7), fun = sd)
sd13_ndwi2024 <- focal(ndwi2024, w = matrix(1/169, 13, 13), fun = sd)
par(mfrow = c(3, 1))
plot(sd3_ndwi2024, col=viridis(100), main="SD NDWI 3x3 - 2024")
plot(sd7_ndwi2024, col=viridis(100), main="SD NDWI 7x7 - 2024")
plot(sd13_ndwi2024, col=viridis(100), main="SD NDWI 13x13 - 2024")

# differenze sempre considerando il 2024
diffsdNDWI <- sd13_ndwi2024 - sd13_mndwi2017
plot(diffsdNDWI, col=viridis(100), main= "SD DIFFERENZA NDWI24 - NDWI17")
diffsd1NDWI <- sd13_ndwi2024 - sd13_ndwi2021
plot(diffsd1NDWI, col=viridis(100), main= "SD DIFFERENZA NDWI24 - NDWI21")

diffopposta <- sd13_mndwi2017 - sd13_mndwi2024
plot(diffopposta, col=viridis(100), main= "SD DIFFERENZA MNDWI17 - MNDWI24")
