#Spectral indices

library(terra)
library(imageRy)
im.list()
img1992 <- im.import("matogrosso_l5_1992219_lrg.jpg") #importo l'immagine
#bands
#banda 1 = NIR
#banda 2 = red
#banda 3 = green

#plotto i data come ho voglia
im.plotRGB(img1992, r=1, g=2, b=3)

#NIR on green
im.plotRGB(img1992, 2,1,3)

#per far vedere il suolo nudo giallo
#NIR ontop of the blue
im.plotRGB(img1992, 2,3,1)



#importo l'immagine del 2006
img2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

par(mfrow=c(1,2))
im.plotRGB(img1992, r=1, g=2, b=3)
im.plotRGB (img2006, 1,2,3)

#nir ontop green
im.plotRGB (img2006, 2,1,3)

#nir ontop of blue
im.plotRGB (img2006, 2,3,1)

par(mfrow= c(2,3))
im.plotRGB(img1992, 1,2,3)  #1992 nir on red
im.plotRGB(img1992, 2,1,3)  #1992 nir on green      
im.plotRGB(img1992, 2,3,1)  #1992 nir on blue
im.plotRGB (img2006, 1,2,3) #2006 nir on red
im.plotRGB (img2006, 2,1,3) #2006 nir on green 
im.plotRGB (img2006, 2,3,1) #2006 nir on blue








