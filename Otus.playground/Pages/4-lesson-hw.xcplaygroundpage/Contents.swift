/*
 Сгенерировать массив случайных чисел (например 200 чисел). Найти индекс первого повторяющегося числа в массиве. Если все числа разные - то -1.
 Пример : [3, 4, 5, 6, 8, 78, 67, 4, 88] - 4, индекс 1
 */

var nums: [Int] = []

for num in 0...199 {
    nums.append(Int.random(in: 0...1000))
}

var index = -1

for i in 0..<nums.count {
    if index != -1 {
        break
    }
    
    for j in i + 1..<nums.count {
        if nums[i] == nums[j] {
            index = i
            break
        }
    }
}

print(index)
