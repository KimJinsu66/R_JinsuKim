# 1.1 위와 같은 내용의 매트릭스 score을 생성하시오
score <- matrix(c(10,40,60,20,21,60,70,30),nrow=4,ncol=2)
m <- c(10,40,60,20)
f <- c(21,60,70,30)
score <- data.frame(m,f)
score

#1.2 socre의 열 이름을 각각 male,female로 바꾸시오
colnames(score) <- c('male','female')
score

#1.3 2행에 있는 모든 값 출력
score[2,]

#1.4 female의 모든 값을 출력하시오
score[,'female']

#1.5 3행 2열의 값을 출력하시오.
score[3,2]
