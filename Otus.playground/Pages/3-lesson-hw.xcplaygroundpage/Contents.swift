/*
 Есть произвольный массив чисел, найти максимальное и минимальное число и поменять их местами
 */

var nums = [1, 5, 77, 3, 22, 0, 1, 33, -6, 44]

var minValueIndex = 0
var maxValueIndex = 0

for index in 0..<nums.count {
    if nums[index] > nums[maxValueIndex] {
        maxValueIndex = index
    }
    if  nums[index] < nums[minValueIndex] {
        minValueIndex = index
    }
}
var minValue = nums[minValueIndex]
nums[minValueIndex] = nums[maxValueIndex]
nums[maxValueIndex] = minValue

print(nums)


/*
 Есть две коллекции символов - собрать результирующее множество из символов, что повторяются в 2х коллекциях
 */

var symbol1 = ["A", "M", "Y", "L"]
var symbol2 = ["K", "L", "P", "A"]

var intersectionSymbols = Set(symbol1).intersection(Set(symbol2))

print(intersectionSymbols)


/*
 Создать словарь с соотношением имя (ключ) пользователя - пароль (значение), получить из словаря все имена, пароли которых длиннее 10 символов
 */

var personalData: [String : String] = ["ivalovivan" : "shhsugfdk*", "foxmobily" : "*qwe^%2456hhoKJftg", "jobkasl" : "Uindfysdbp)04673jgttfGh", "kosLes" : "N376(ftt@"]

var passwordsMoreThen10characters: [String] = []

for (login, passoword) in personalData {
    if passoword.count > 10 {
        passwordsMoreThen10characters.append(login)
    }
}

print(passwordsMoreThen10characters)
