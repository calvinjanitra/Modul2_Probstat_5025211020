# Modul2_Probstat_5025211020

**<br>Calvin Janitra**
**<br>5025211020
<br>Probstat A**

## SOAL 1
### Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴
| Responden  | X | Y |
|:-----------:| :------:| :------:|
| 1| 78| 100|  
| 2| 75| 95|  
| 3| 67| 70|  
| 4| 77| 90|  
| 5| 70| 90|  
| 6| 72| 90|  
| 7| 78| 89|  
| 8| 74| 90|  
| 9| 77| 100|  

>A. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```R
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
diff <- x-y
sd(diff)
```
![image](https://user-images.githubusercontent.com/95208578/207116685-51722b90-6c0c-4dda-b985-18eaeba8406b.png)

>B. Carilah nilai t (p-value)
```R
t.test(y, x, paired = TRUE)
```
![image](https://user-images.githubusercontent.com/95208578/207116880-5153f9b0-2976-4556-96d8-7804bda1e94f.png)


>C. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

`
Dari hasil dari poin B, diketahui bahwa nilai dari uji 𝑡 (p-value) adalah 6.003e-05 atau 0.00006003. Karena nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka menolak hipotesis nol dan hipotesis satu diterima.
Hal ini berarti terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 pada tingkat signifikansi 5%.
`

## SOAL 2
### Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

>A. Apakah Anda setuju dengan klaim tersebut?

`
Setuju, karena dengan rata-rata 23.5000 dari sampel acak dengan standar deviasi 3900 kilometer, maka sangatlah mungkin klaim tersebut valid. Hal itu karena grafik dari persebaran data distribusi normal yang dihasilkan akan lebih pekat di daerah lebih dari 20.000 kilometer dengan asumsi nilai tengah grafik tersebut adalah rata-rata dari sampel acak yang didapatkan.
`

>B. Jelaskan maksud dari output yang dihasilkan!

Fungsi yang digunakan adalah fungsi tsum.test() dengan parameter-parameter yang disebutkan pada poin sebelumnya. Hasilnya adalah sebagai berikut.
```
tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)
```
![image](https://user-images.githubusercontent.com/95208578/207119868-2209874e-8bd4-4abd-bb47-ff5d5c043942.png)

>C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

`
Karena nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka hipotesis nol ditolak dan hipotesis alternatif diterima. Sehingga, kesimpulan yang didapatkan yaitu bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
`
## SOAL 3
### Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
| Nama Kota/ Atribut  | Bandung | Bali |
|:-----------:| :------:| :------:|
| Jumlah Saham| 19| 27|  
| Sampel Mean| 3.64| 2.79|  
| Sampel Standar Deviasi| 1.67| 1.32|  

>A. H0 dan H1(3)
```R
H0: miu1 = miu2 
H1: miu1 != miu2 
```
H0 = tidak terdapat perbedaan antara rata-rata saham bandung dengan rata-rata saham bali

H1 = terdapat perbedaan antara rata-rata saham bandung dengan rata-rata saham bali

>B. Hitung Sampel Statistik(3)
```R
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y=2.79, s.y = 1.32, n.y = 27, alternative = "greater", 
          mu = 0, var.equal = TRUE,
          conf.level = 0.90)
```
![image](https://user-images.githubusercontent.com/95208578/207120749-b4cb15c5-1bdf-4a2f-91af-54ccbccd1f5b.png)


>C. Lakukan Uji Statistik (df =2)
```R
install.packages("mosaic")
library(mosaic)

plotDist(dist = 't', df = 2, col = "blue")
```
![image](https://user-images.githubusercontent.com/95208578/207121132-5fdacc44-46a4-4cfe-bf15-502af61de415.png)

>D. Nilai Kritikal
```R
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```
![image](https://user-images.githubusercontent.com/95208578/207121260-600b7163-06d5-423f-9a3d-3e87b4a62222.png)

>E. Keputusan
```
Dari hasil t-test didapatkan p-value = 0.03024, berada dibawah 0.05. Maka null hypotesis / H0 ditolak.
```
>F. Kesimpulan
```
Kesimpulannya terdapat perbedaan antara rata-rata saham bandung dengan rata-rata saham bali.
```

## SOAL 4
### Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika :

>A. Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```R
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")
```
>B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
```R
bartlett.test(Length ~ Group, data = dataoneway)
```

>C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
```R
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)
```

>D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?

`
Berdasarkan hasil yang didapatkan pada poin sebelumnya, pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013. Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.
`

>E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
```R
TukeyHSD(aov(model1))
```

Dari hasil diatas dapat diketahui p-value tiap 2 jenis grup. Jika p-value lebih kecil dari 0.05, maka panjang kedua grup berbeda, jika p-value lebih dari 0.05 maka panjangnya sama. Berdasarkan hasil diatas dapat disimpulkan kucing putih dan kucing oren memiliki ukuran atau panjang yang sama.

>F. Visualisasikan data dengan ggplot2
```R
ggplot(onewayanova, aes(x = Group, y = Length)) +
  geom_boxplot(color = c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_x_discrete() + xlab("Group") + ylab("Length (cm)")
```
## SOAL 5
### Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

>A. Buatlah plot sederhana untuk visualisasi data 
```R
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```
```
GTL <- read_csv("data_soal_5.csv")
head(GTL)
```
![image](https://user-images.githubusercontent.com/95208578/207327726-63b3475c-9920-4c73-a5d9-128da49be8c4.png)

```
str(GTL)
```
![image](https://user-images.githubusercontent.com/95208578/207327777-1327371d-5210-4f62-928d-f6f9e03c8cd0.png)

```
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```
![image](https://user-images.githubusercontent.com/95208578/207327813-82c36eff-e311-404c-b67c-4dc6dfb71bf8.png)

>B. Lakukan uji ANOVA dua arah untuk 2 faktor
```R
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```
![image](https://user-images.githubusercontent.com/95208578/207327960-d7702eaf-6c16-45da-a651-98657c70be7e.png)

>C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```R
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```
![image](https://user-images.githubusercontent.com/95208578/207328038-aad3f581-07f6-46ad-a029-17c5aff80187.png)

>D. Lakukan uji Tukey
```R
tukey <- TukeyHSD(anova)
print(tukey)
```
![image](https://user-images.githubusercontent.com/95208578/207328162-6546478d-bdae-41d6-80cb-b3a4279be22a.png)

![image](https://user-images.githubusercontent.com/95208578/207328233-642d1bd0-7f32-4cab-9c02-8e5e152f9193.png)

>E. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
```R
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
```
![image](https://user-images.githubusercontent.com/95208578/207328493-45cd0fb3-d4c0-498f-a57f-b2751ab8794b.png)

