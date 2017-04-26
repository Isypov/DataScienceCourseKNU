1.	Написати функцію pmean, яка обчислює середнє значення (mean) забруднення сульфатами або нітратами серед заданого переліка моніторів. Ця функція приймає три аргументи: «directory», «pollutant», «id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення, id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332. Функція повинна ігнорувати NA значення.
```r
 my_directory ="C:\\Users\\Peter\\Desktop\\specdata"
> pmean(my_directory,"sulfate",1:10)
```
[1] 4.064128
```r
> pmean(my_directory,"sulfate",55)
[1] 3.587319
```
```r
> pmean(my_directory,"nitrate")
```
[1] 1.702932
```r
> pmean(my_directory,"nitrate",10)
```
[1] 0.6000639
```r
> pmean(my_directory,"nitrate",1:100)
```
[1] 2.069812
```r
> pmean(my_directory,"sulfate",1:100)
```
[1] 2.85664
