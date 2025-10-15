
//Реализовать модель данных пользователя - структуру (с 2-3 полями), создать массив пользователей, сделать какое-то поля (например - имя) - изменяемым.
//Создать массив пользователей (3-4 элемента), вывести в консоль описание пользователя, поменять имя для второго пользователя в массиве, снова вывести описание для каждого пользователя.


struct User {
    let name: String
    let age: Int
    var job: String
}


var anton = User(name: "Anton", age: 29, job: "Developer")
var ana = User(name: "Ana", age: 23, job: "Confectioner")
var max = User(name: "Max", age: 45, job: "Lawyer")

var users: Array<User> = [anton, ana, max]


printUsers(users)

users[1].job = "Cook"

printUsers(users)


func printUsers(_ users: Array<User>) {
    for user in users {
        print("Name:", user.name, "Age:", user.age, "Job:", user.job)
    }
}
