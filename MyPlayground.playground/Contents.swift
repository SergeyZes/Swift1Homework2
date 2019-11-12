import UIKit

//Задание 1 - Написать функцию, которая определяет, четное число или нет.

func isEven(num: Int) -> Bool {
    return num % 2 == 0
}

let num = 7

print("Задание 1")
isEven(num: num) ? print("четное") : print("нечетное")

//Задание 2 - Написать функцию, которая определяет, делится ли число без остатка на 3.

func isThreeMultiple(num: Int) -> Bool {
    return num % 3 == 0
}

let num2 = 27

print("Задание 2")
isThreeMultiple(num: num2) ? print("кратно 3") : print("не кратно 3")

//Задание 3 - Создать массив из 100 чисел
var arr = [Int]()

for _ in 1...100 {
    arr.append(Int.random(in: 0...100))
}

print("Задание 3")
print(arr)

//Задание 4 - Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
arr.removeAll { (val) -> Bool in
    return isEven(num: val) || !isThreeMultiple(num: val)
}

print("Задание 4")
print(arr)

//Задание 5 - Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 90 элементов.
func addFibNumber(arr: inout [Int64]) {
    let cnt = arr.count
    arr.append(arr[cnt - 2] + arr[cnt - 1])
}

var arr2: [Int64] = [0,1]

for _ in 1...90 {
    addFibNumber(arr: &arr2)
}

print("Задание 5")
print(arr2)

//Задание 6 - Заполнить массив из 100 элементов различными простыми числами.
var arr3 = [Int]()
var simpleNumbers = [2]
var lastSimple = 2

for i in 3...1000 {
    arr3.append(i)
}

while true {
    arr3.removeAll { (val) -> Bool in
        val % lastSimple == 0
    }
    
    if arr3.first == nil {
        break
    }
    
    lastSimple = arr3.first!
    simpleNumbers.append(lastSimple)
    if simpleNumbers.count == 100 {
        break
    }
    
}

print("Задание 6")
print(simpleNumbers)


