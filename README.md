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

A. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```
before <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
difference <- before - after
sd(difference)
```
B. Carilah nilai t (p-value)
```
t.test(after, before, paired = TRUE)
```

C. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

## SOAL 2
###Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

A. Apakah Anda setuju dengan klaim tersebut?

B. Jelaskan maksud dari output yang dihasilkan!

C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

## SOAL 3
### Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
| Nama Kota/ Atribut  | Bandung | Bali |
|:-----------:| :------:| :------:|
| Jumlah Saham| 19| 27|  
| Sampel Mean| 3.64| 2.79|  
| Sampel Standar Deviasi| 1.67| 1.32|  

A. H0 dan H1(3)
```
```
B. Hitung Sampel Statistik(3)
```
```

C. Lakukan Uji Statistik (df =2)

D. Nilai Kritikal

E. Keputusan

F. Kesimpulan

## SOAL 4
### Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika :

A. Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```
```
B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
```
```

C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.

D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?

E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

F. Visualisasikan data dengan ggplot2
## SOAL 5
### Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

A. Buatlah plot sederhana untuk visualisasi data 
```
```
B. Lakukan uji ANOVA dua arah untuk 2 faktor

C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

D. Lakukan uji Tukey

E. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
