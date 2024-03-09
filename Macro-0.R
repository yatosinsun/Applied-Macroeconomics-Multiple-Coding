
#### 0 - C : Milli Gelir Muhasebesi ####


# Basit Örnek : 1 

# Keynesyen Basit Açık Model

C <- 100 # Tüketim harcamaları
I <- 50 # Yatırım harcamaları
G <- 30 # Devlet harcamaları
Ex <- 40 # İhracat
Im <- 20 # İthalat
NX = Ex - Im

GSYH <- C + I + G + NX # GSYH hesaplama formülü

print(GSYH) # GSYH değerini ekrana yazdır

# Basit Örnek : 2 #

# Milli gelir çalışanlar ile girişimciler & mülk sahipleri arasında nasıl dağılır?

YC <- 50 # Çalışanlar (Emek Gelirleri)
YMG <- 30 # Mülkiyet Sahibi ve Girişimciler

MG <- YC + YMG # MG : Milli gelir 

print(MG) # MG değerini ekrana yazdır

EP <- YC / MG # EP : Emeğin Payı

Emek <- round(EP*100, digits=2)
EmekPayi <- paste(Emek, "%", sep="")
print(EmekPayi)

SP <- 1 - EP # SP : Sermayenin Payı

Sermaye <- round(SP*100, digits=2)
SermayePayi <- paste(Sermaye, "%", sep="")
print(SermayePayi)