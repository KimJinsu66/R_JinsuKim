#2번

#2.1 state.x77을 변환하여 st에 데이터프레임으로 저장하시오. (st <- data.frame(state.x77))
st <- data.frame(state.x77)

#2.2 st의 내용을 출력하시오.
st
#2.3 st의 열 이름을 출력하시오.
colnames(st)
#2.4 st의 행 이름을 출력하시오.
rownames(st)
#2.5 st의 행의 개수와 열의 개수를 출력하시오.
nrow(st)
ncol(st)

#2.6 st의 요약 정보를 출력하시오.
str(st)

#2.7 st의 행별 합계와 평균을 출력하시오.
rowSums(st)
rowMeans(st)

#2.8 st의 열별 합계와 평균을 출력하시오. 
colSums(st)
colMeans(st)

#2.9 Florida 주의 모든 정보를 출력하시오.
st["Florida",]

#2.10 50개 주의 수입(Income) 정보만 출력하시오.
st[,"Income"]

#2.11 Texas 주의 면적(Area)을 출력하시오. 시오.
st["Texas","Area"]

#2.12 Ohio 주의 인구(Population)와 수입(Income)을 출력하시오.
st["Ohio",c("Population","Income")]

#2.13 인구가 5,000 이상인 주의 데이터만 출력하시오.
subset(st,Population>=5000)

#2.14 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력하시오.
subset(st,Income>=4500)[c("Population","Income","Area")]

#2.15 수입이 4,500 이상인 주는 몇 개인지 출력하시오.
nrow(subset(st,Income >= 4500))

#2.16 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보를 출력 하시오
subset(st,Area>=100000 & Frost >= 120)

#4번
#4.1번이 데이터셋의 자료구조를 보이시오
class(airquality)

#4.2 이 데이터셋의 앞쪽 일부분의 내용만 보이시오.
head(airquality)

#4.3 기온(Temp)이 가장 높은 날은 언제인지 월(Month)과 일(Day)을 보이시오.
air3 <- subset(airquality,Wind == max(airquality["Wind"]))[c("Month","Day")]
air3

#4 6월달에 발생한 가장 강한 바람(Wind)의 세기를 보이시오.
air4 <- max(subset(airquality,Month == 6)[c("Wind")])
air4

#5 7월 달의 평균 기온(Temp)을 보이시오.
air5 <- colMeans(subset(airquality,Month == 7)["Temp"])
colMeans(air4["Temp"])
air5

#6 NA값을 제외한 5월의 평균 오존(Ozone) 농도를 보이시오.
air6 <- colMeans(subset(airquality, Month == 5 & Ozone >= 0)["Ozone"])
air6

#7 오존(Ozone) 농도가 100을 넘는 날은 며칠이나 되는지 보이시오.
air7 <- nrow(subset(airquality,Ozone > 100))
air7


#6번

#1

setwd("C:/Users/2019AFT/Documents/R/file")
st <- data.frame(state.x77)
st1 <- subset(st,Income >= 5000)
st2 <- st1[c("Income","Population","Area")]              
write.csv(st2,"rich_state.csv",row.names =F)

#2 (1)에서 만든 rich_state.csv 파일을 읽어서 ds 변수에 저장한 후 ds의 내용을 출력하시오.
ds <- read.csv("rich_state.csv",header=T)
ds

#9번
v1 <- 51:90

#9.1
v1[v1<60]

#9.2
length(v1[v1<70])

#9.3
sum(v1[v1>65])

#9.4
v1[v1>60 & v1<73]

#9.5
v1[v1<65 | v1>73]

#9.6
v1[v1%%7 ==3]

#9.7
v1[v1%%7==0] <- 0
v1
