
//В Playground реализуйте некоторый базовый класс из выбранной вами области описания (тематики).
//
//Добавьте в него свойства и методы, а также несколько инициализаторов. Класс должен содержать свойства и методы разной области видимости (private, fileprivate, internal или public)
//
//Создайте несколько классов-наследников. Переопределите при необходимости свойства и методы родителя. А также добавьте свои.
//
//В основном пространстве Playground создайте функцию для демонстрации полиморфизма.
public enum AccountType: String {
    case regular = "Regular"
    case savings = "Savings"
    case business = "Business"
}

class BankAccount {
    let accountNumber: String
    public let accountType: AccountType
    let ownerName: String
    private var balance: Double
    var isBlocked: Bool

    
    init(accountNumber: String, ownerName: String, balance: Double, isBlocked: Bool, accountType: AccountType) {
        self.accountNumber = accountNumber
        self.ownerName = ownerName
        self.balance = balance
        self.isBlocked = isBlocked
        self.accountType = accountType
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func getInfo() -> String {
        return """
        
        Account number: \(accountNumber)
        Account Type: \(accountType.rawValue)
        Owner: \(ownerName)
        Balance: \(getBalance()) ₽
        Status: \(isBlocked ? "Blocked" : "Active")
        """
    }
    
    func withdraw(amount: Double) {
        guard balance >= amount && !isBlocked else {
            return
        }
        balance -= amount
    }
    
    func deposit(amount: Double) {
        guard !isBlocked else {
            print("Операция невозможна: счёт заблокирован.")
            return
        }
        balance += amount
    }
    
   
}


class SavingsAccount : BankAccount {
    private var interestRate: Double
        
    init(accountNumber: String, ownerName: String, interestRate: Double, balance: Double) {
            self.interestRate = interestRate
        super.init(accountNumber: accountNumber, ownerName: ownerName,balance: balance, isBlocked: false, accountType: .savings)
    }
        
    
    override func withdraw(amount: Double) {
        guard amount <= 10000 else {
            print("С накопительного счёта можно снять максимум 10,000 руб. за раз!")
            return
        }
        super.withdraw(amount: amount)
    }
    
    override func getInfo() -> String {
        return super.getInfo() + "\nInterest rate: \(interestRate)%"
    }

  
    
    func addInterest() {
        let interest = getBalance() * interestRate / 100
        deposit(amount: interest)
    }
        
}

func showAccountInfo(_ account: BankAccount) {
    print(account.getInfo())
}

let base = BankAccount(accountNumber: "001", ownerName: "Liza", balance: 5000, isBlocked: false, accountType: .regular)
let savings = SavingsAccount(accountNumber: "002", ownerName: "Mila", interestRate: 5.0, balance: 10000)

showAccountInfo(base)
showAccountInfo(savings)

