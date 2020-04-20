favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
favorite
table(favorite) # favorite에 통계를 내준다.
table(favorite)/ length(favorite) # 자료의 비율을 알려준다.


ds <- table(favorite)
ds
barplot(ds,main='favorite season')

pie(ds,main='favorite season')

favorite.color <-  c(2,3,2,1,1,2,2,1,3,2,1,2)
table(favorite.color)
ds1 <- table(favorite.color)
ds1
barplot(ds1,main = 'Favorite Color')
colors <- c('green','red','blue')
colors
names(ds1) <- colors
barplot(ds1,main = 'Favorite Color',col = colors)

#짝수일 경우 중앙 값 설정
a1 <- c(64,65)
a1
mean(a1)
median(a1)

# 절사평균 상위 n% , 하위 n%를 제외하고 중간에 있는 나머지 값으로 평균을 구한다.

weight <- c(60,62,64,65,68,69)
weight.heavy <-  c(weight,120)
weight
weight.heavy
mean(weight)
mean(weight.heavy)
median(weight)
median(weight.heavy)

mean(weight,trim = 0.2)
mean(weight.heavy,trim =0.2)

#4분위수
mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata,(0:10)/10)
summary(mydata)

#산포
mydata <- c(60,62,64,65,68,69,120)
var(mydata) # 분산
sd(mydata)# 표준편차
range(mydata)
diff(range(mydata))
# 히스토그램

cars
dist <- cars[,2]
dist
hist(dist,main='Histogram for 제동거리',
     xlab = '제동거리',
     ylab = '빈도수',
     border = 'blue',
     col = 'red',
     breaks = 5)
