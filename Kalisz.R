#1
install.packages("stringr")
library(stringr)

tekst1 = list("TERYT 18; podkarpackie; Rzeszów; 0.2 He; A")
tekst2 = list("TERYT 22; pomorskie;   Gdañsk; 12 C ; B")
str_sub(tekst1, start = -5, end = -4)
str_sub(tekst2, start = -5, end = -5)

#2,3
horoskop = function(imie, miesiac){
  if(str_detect(imie, pattern = "^[KMZkmz]")){
    cat("Osoba o imieniu", imie, "bêdzie mia³a jutro szczêœcie.")
  }
  else if(miesiac %% 2 == 0){
    cat("Osoba o imieniu", imie, "bêdzie mia³a jutro szczêœcie.")
  }
  else{
    cat("Osoba o imieniu", imie, "bêdzie mia³a jutro nieszczêœcie.")
  }
}

horoskop("Wiktoria", 12)
horoskop("Ola", 3)

#4
tekst = c("2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3")
data1 = str_replace(tekst, pattern = "19/03/12", replacement = "2019-03-12")
data2 = str_replace(tekst, pattern = "2019.03.13", replacement = "2019-03-13")
data3 = str_replace(tekst, pattern = "marzec", replacement = "03")
daty = c(data1, data2, data3)
daty
daty2 = str_replace_all(tekst, pattern = "/", replacement = "-")
daty2

#5
wartosci = str_extract_all(tekst, pattern = "[0-9][0-9][.][0-9]")
wartosci
