// Модель данных - тип User
class User {
    
    // Stored Properties
    let id: String
    let name: String
    let phone: String
    
    // ленивое свойство задается стразу
    // lazy var boolValue: Bool = false
    
//    private var lazy_storage_$_boolValue: Bool?
//    
//    var boolValue: Bool {
//        get {
//            if $_lazy_storage_$_boolValue == nil {
//                $_lazy_storage_$_boolValue = false
//            }
//            return $_lazy_storage_$_boolValue!
//        }
//        set {
//            $_lazy_storage_$_boolValue = newValue
//        }
//        
//    }
//    
    
    
    // вычисляемое свойство это синтаксический сахар, это аналог функции ниже
    var intValue: Int {
        get {
            counter + 1
        }
        set {
            counter += newValue
        }
    }
    
    func getValue() -> Int {
        counter + 1
    }
    
    func setValue(_ newValue: Int) {
        counter += newValue
    }
    
    private var counter = 0
    
    init(id: String, name: String, phone: String) {
        self.id = id
        self.name = name
        self.phone = phone
    }
}

let artem: User = User(
    id: "0003-33-44",
    name: "Artem",
    phone: "848884084"
)

//artem.boolValue
//artem.boolValue = true
//artem.boolValue
artem.id
artem.intValue
artem.intValue = 10
artem.intValue

class Human {
    let name: String = ""
}

let human = Human.init()
let human2 = Human()

human.name


