import UIKit

// MARK: Variables

var greeting: String = "Hello, playground" // по умолчанию тип не пишем

let name = "Ivan"

var age: Int? // nil



// MARK: Operands

var x = 5
let y  = 8

x = x + y
print(x)


var year = 2002.0
var count = 4.0

year / count

var b = -4
     
// если тип данных Int, то округление при деление в меншую строну (проверить)
// если не указывать разрядность Int, то берется разряжность операционной системы

let a: UInt = 50

// UInt  это только положительные числа (без знака)


// Float, Double (по уолчанию число с точкой будет Double)

let floatExample: Float = 3.5
let doubleExample = 4.3

//преобразование типов:

if floatExample != Float(doubleExample) {
    print(Double(floatExample) + doubleExample)
}


// MARK: Strings

// только двойнык кавычки для строк

var myName = "Nikolai"
var myName2 = "JJ"
myName = "II"
var result = myName + myName2 + "ss"



// MARK: Кортежи (Tuples)

// это значения (возможно,разных типов), но заранее известных каких, обьединенные в один тип

let someTuple: (Int, String) = (4, "Oleg")

someTuple.0
someTuple.1
someTuple.self

// кортеж передается сразу копированием ??, он ведет себя по значению, не по ссылке

let anotherTuple = someTuple


// MARK: создание кастомного типа MyTuple
typealias MyTuple = (name: String, age: Int)
let myTuple: MyTuple = ("Ivan", 29)

myTuple.name
myTuple.age


// MARK: Optionals

var optionalExample: Int? // nil

// Int? != Int

// Optionals это синтаксический сахар

// var optionalExample1: Int?
var optionalExample2: Optional<Int>
 
// let newValue = x + optionalExample!  // Error тк optionalExample = nil, ! гарантирует не nil
let newValue1 = x + (optionalExample ?? 0)


let yearBirth: String = "5"

if let parserValue = Int(yearBirth) {
    print(parserValue)
    print(type(of: parserValue))
} else {
    print(type(of: Int(yearBirth)))
}


let stringFromServer: String? = "fresh"

// print(stringFromServer?.lowercased()) // Тут будет инфа в занятии про Классы
