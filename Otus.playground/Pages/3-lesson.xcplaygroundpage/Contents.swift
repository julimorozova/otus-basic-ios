
// MARK: Arrays

// упорядоченный тип данных, содержащий один тип данных
// коллекции передаются по значению, но есть нюанс copy on write !!

var towns: Array<String> = []
var towns1: [String] = []
var towns2 = ["Belgrad"]


var numbers = [11, 12, 4, 34, 23]
var numbers1: [Int] = []

numbers1 = numbers

print(numbers)
print(numbers1)

numbers[0] = 0

print(numbers)
print(numbers1)

// как только мы меняем один из массивов создается его копия с новым значением

// если создать массив через let, то его нельзя будет изменить
// добавление элементов:
// по индексу

var nums = [1, 3, 4, 5]
nums[0] = 9

// nums[5] = 599 error

let c = nums[1]

// добавление в конец массива

nums.append(455)

// добавление эллементов после какого-то элемента at: 3 после 3 элемента
nums.insert(123, at: 5)

print(nums)

nums.count
nums.isEmpty
nums.first // Int?
nums.last // Int?

var nums1: [Int] = []
nums1.append(2)
print(nums1.count)
print(nums1.capacity) // под массив выделяется больший обьем памяти, сколько есть свободного места еще для этого массива

// поэтому когда память всего массива занята и мы хотим вставить еще один элемент, тогда ищется еще больший кусок памяти и туда копируется весь массив и увеличивается capacity и потом добавляется новый элемент и  поэтому эта операция очень дорогостоящая и она займет очень много времени, сложность O(n)
// поэтому если точно знаем сколько будет эллементов в массиве, то можем сразу зарезервировать какое-то capacity, но при этом еще больше мы можем увеличивать массив

nums1.reserveCapacity(100)
print(nums1.capacity)



// MARK: Sets

// неупорядоченная коллекция уникальных элементов

var uniqSet: Set<String> = []
var towns13: Set = ["Omsk", "Peter"]
var towns23: Set = ["Omsk", "Peter", "Voronezh"]

// Основные операции
// union обьединять 2 сета, возвращает новый Set
let unionSet = towns13.union(towns23)
print(unionSet)

// intersection - пересечение, остануюся только повторяющие элементы в 2х сетах
let intersectionSet = towns13.intersection(towns23)
print(intersectionSet)

// subscructing 
// symmetricDiff



// MARK: Dictionary

// в других языках программирования это Map
// это хранилище ключ: значение, ключ уникален
// на собесах часто спрашивают как устроен внутри словарь

var emptyDictionary: [String : String] = [:]
var names: [String : String] = ["name": "Ivan"]

names["name"]
names["city"] = "Voronezh"

print(names)

names.removeValue(forKey: "name")
names["city"] = nil

print(names)


// MARK: Iterate

var values = [11, 12, 4, 34, 23]

for currentValue in values {
    print(currentValue)
}

print("---------------")

for index in 0..<values.count {
    print(values[index])
}
print("---------------")

values.forEach { currentValue in
    print(currentValue)
}

print("---------------")

var mySet: Set<Int> = [1, 4, 5, 6, 7]

mySet.forEach { value in
    print(value)
}

print("---------------")

var person: [String : String] = ["name": "Ivan"]

for currentPair in person {
    print(currentPair.value)
}

person.keys
person.values
