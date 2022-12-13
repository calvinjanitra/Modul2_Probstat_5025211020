# 1 A
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
diff <- x-y
sd(diff)

# 1 B
t.test(y, x, paired = TRUE)

# 1 C
#Dari hasil dari poin B, diketahui bahwa nilai dari uji 𝑡 (p-value) adalah 6.003e-05 atau 0.00006003. Karena nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka menolak hipotesis nol dan hipotesis satu diterima. Hal ini berarti terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 pada tingkat signifikansi 5%.


# 2 A
# Setuju, karena dengan rata-rata 23.5000 dari sampel acak dengan standar deviasi 3900 kilometer, maka sangatlah mungkin klaim tersebut valid. Hal itu karena grafik dari persebaran data distribusi normal yang dihasilkan akan lebih pekat di daerah lebih dari 20.000 kilometer dengan asumsi nilai tengah grafik tersebut adalah rata-rata dari sampel acak yang didapatkan.

# 2 B
install.packages("BSDA")
library(BSDA)
tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)
# 2 C
#Karena nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka hipotesis nol ditolak dan hipotesis alternatif diterima. Sehingga, kesimpulan yang didapatkan yaitu bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun


# 3 A
H0: miu1 = miu2 
H1: miu1 != miu2 

# 3 B
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y=2.79, s.y = 1.32, n.y = 27, alternative = "greater", 
          mu = 0, var.equal = TRUE,
          conf.level = 0.90)
# 3 C
install.packages("mosaic")
library(mosaic)

plotDist(dist = 't', df = 2, col = "blue")

# 3 D
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

# 3 E
#Dari hasil t-test didapatkan p-value = 0.03024, berada dibawah 0.05. Maka null hypotesis / H0 ditolak.

# 3 F
#Kesimpulannya terdapat perbedaan antara rata-rata saham bandung dengan rata-rata saham bali.


# 4 A
library(ggplot2)

dataa <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), h = T)
dataa$Group <- as.factor(dataa$Group)
dataa$Group = factor(dataa$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataa$Group)

Group1 <- subset(dataa, Group == "Kucing Oren")
Group2 <- subset(dataa, Group == "Kucing Hitam")
Group3 <- subset(dataa, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# 4 B
bartlett.test(Length ~ Group, data = dataa)

# 4 C
model1 = lm(Length ~ Group, data = dataa)
anova(model1)

# 4 D
#Berdasarkan hasil yang didapatkan sebelumnya, pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013. Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.

# 4 E
TukeyHSD(aov(model1))

# 4 F
install.packages("ggplot2")
library("ggplot2")

ggplot(dataa, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")


# 5 A
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

# 5 B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# 5 C
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# 5 D
tukey <- TukeyHSD(anova)
print(tukey)

# 5 E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

