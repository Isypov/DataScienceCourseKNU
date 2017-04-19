1.	Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```r  
a<-1L
b<-1
c<-'a'
d<-TRUE
e<-1 + 1i
```
2.	Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE
```r
x<-c(5:75)
y<-c(3.14, 2.71, 0, 13)
z<-replicate(100, c(TRUE))
```

3.	Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
```
0.5	1.3	3.5
3.9	131	2.8
0	2.2	4.6
2	7	5.1
```
```r
matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), ncol=3, nrow=4)
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

col1<-c(0.5, 3.9, 0, 2)
col2<-c(1.3, 131, 2.2, 7)
col3<-c(3.5, 2.8, 4.6, 5.1)
combined_matrix<-cbind(col1, col2, col3)
combined_matrix
     col1  col2 col3
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
4.	Створити довільний список (list), в який включити всі базові типи.
```r
list(1L, 2, TRUE, 'a', 1+1i)
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] TRUE

[[4]]
[1] "a"

[[5]]
[1] 1+1i
```
5.	Створити фактор з трьома рівнями «baby», «child», «adult».
```r
people<-c('baby', 'baby', 'child', 'adult', 'adult', 'adult')
factor(people, levels=c('baby','child','adult'))
[1] baby  baby  child adult adult adult
Levels: baby child adult
```
6.	Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
```r
match(NA, c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11))
[1] 5

sum(is.na(c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)))
[1] 3
```
7.	Створити довільний data frame та вивести в консоль.
```r
df<-data.frame(sum = c(1,2,3,4,5),item = c('a','b','c','d','e'))
df
  sum item
1   1    a
2   2    b
3   3    c
4   4    d
5   5    e
```
8.	Змінити імена стовпців цього data frame.
```r
colnames(df)<-c('total', 'name')
df
  total name
1     1    a
2     2    b
3     3    c
4     4    d
5     5    e
```
