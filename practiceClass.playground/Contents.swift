//1. 創建一個名為 Animal 的類別，其中包含屬性 name 和方法 makeSound()。然後創建一個名為 Dog 的子類別，並重寫 makeSound() 方法，讓它印出 "Woof"。
// 定義一個基本的動物類別 Animal
class Animal{
    var name: String
    
    init(name: String) {
        self.name = name // 初始化動物名稱的屬性
    }
    
    func makesound(){
        // 這是一個空的方法，用於發出動物的叫聲，當我們使用這個方法時，必須在子類別中重寫它
    }
}

//定義一個 Dog 類別，繼承自 Animal 類別
class Dog: Animal {
    override func makesound() {
        print("Woof")
    }
}

// 創建一個 Dog 物件，並呼叫 makesound() 方法，讓狗狗發出叫聲
let dog = Dog(name: "Luby")
dog.makesound()

//2. 創建一個名為 Shape 的類別，其中包含屬性 numberOfSides 和方法 description()。然後創建兩個子類別 Triangle 和 Square，分別設定其 numberOfSides 值為 3 和 4，並且在 description() 方法中分別輸出 "This is a triangle." 和 "This is a square."
// 定義一個基本的形狀類別 Animal
class Shape{
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides // 初始化形狀的邊數屬性
    }
    
    func description(){
        print("This is a shape with \(numberOfSides) side") // 描述形狀的方法
    }
    
}
// 定義一個 Triangle 類別，繼承自 Shape 類別
class Triangle: Shape {
    override func description() {
        print("This is a Triangle.") // 重寫 description() 方法，描述三角形的特徵
    }
}
// 定義一個 Square 類別，繼承自 Shape 類別
class Square: Shape {
    override func description() {
        print("This is a Square.") // 重寫 description() 方法，描述正方形的特徵
    }
}
let tri = Triangle(numberOfSides: 3)
tri.description()

let squ = Square(numberOfSides: 4)
squ.description()

//3. 創建一個名為 Person 的類別，包含屬性 name 和 age。再創建一個名為 Student 的子類別，並增加額外屬性 studentID。最後，創建一個名為 Teacher 的子類別，並增加額外屬性 subject。請注意：Student 和 Teacher 皆要有自己的建構子來初始化屬性。
// 定義一個基本的 Person 類別
class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name // 初始化姓名屬性
        self.age = age // 初始化年齡屬性
    }
}

// 定義一個 Student 類別，繼承自 Person 類別
class Student: Person {
    var studentID: Int
    
    init(name: String,age: Int,studentID: Int) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
}

// 定義一個 Teacher 類別，繼承自 Person 類別
class Teacher: Person {
    var subject: String
    
    init(name: String,age: Int,subject: String) {
        self.subject = subject
        super.init(name: name, age: age)
    }
}

// 創建一個 Student 物件，並印出屬性值
let student = Student(name: "Lucas", age: 28, studentID: 982731)
print(student.name)
print(student.age)
print(student.studentID)

// 創建一個 Teacher 物件，並印出屬性值
let teacher = Teacher(name: "Milko", age: 43, subject: "English")
print(teacher.name)
print(teacher.age)
print(teacher.subject)

//4. 創建一個名為 Vehicle 的類別，包含屬性 brand 和 year。然後創建一個名為 Car 的子類別，並新增一個布林屬性 isElectric 來表示是否為電動車。在 Car 中也添加一個方法 printDetails()，印出車子的品牌、年份和是否為電動車
// 定義一個基本的 Vehicle 類別
class Vehicle{
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}

// 定義一個 Car 類別，繼承自 Vehicle 類別
class Car: Vehicle {
    var isElectric: Bool
    
    init(brand: String,year: Int,isElectric: Bool) {
        self.isElectric = isElectric
        super.init(brand: brand, year: year)
    }
    func printDetails(){
        print("This car brand is \(brand), year: \(year), isElectric: \(isElectric)")
    }
}

// 創建一個 Car 物件，並呼叫 printDetails() 方法，印出車輛的詳細資訊
let LexusCar = Car(brand:"Lexus ES300h", year: 2022, isElectric: true)
LexusCar.printDetails()
