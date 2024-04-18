library(RSQLite)
con <- dbConnect(SQLite(), dbname="C:/mert_is/Exercises/Week6/Week6/ornek_veritabani.db")
sorgu <- "
SELECT musteriler.id, ad, soyad, sehir, urun_adi, miktar
FROM musteriler
JOIN siparisler ON musteriler.id = siparisler.musteri_id
"
res <- dbSendQuery(con,"SELECT musteriler.id, ad, soyad, sehir, urun_adi, miktar
FROM musteriler
JOIN siparisler ON musteriler.id = siparisler.musteri_id")
dbFetch(res)

res2 <- dbSendQuery(con,"SELECT * FROM musteriler")
dbFetch(res2)

res3 <- dbSendQuery(con,"SELECT * FROM siparisler")
dbFetch(res3)

print(res)
print(res2)
print(res3)

