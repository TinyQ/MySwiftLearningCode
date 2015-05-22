//: Playground - noun: a place where people can play

import UIKit
//The Swift Programming Language

//初见

//About
//全局作用域中的代码会被自动当做程序的入口点，所以你也不需要main函数。
//你同样不需要在每个语句结尾写上分号。
println("Hello, world")

//使用let来声明常量，使用var来声明变量。
var myVariable = 42
let myConstant = 42
let label      = "The width is"
var x = 0.0, y = 0.0, z = 0.0

//声明类型
let explicitDouble: Double = 70
//数组
var a_shoppingList = ["catfish", "water", "tulips", "blue paint"]
//字典
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

//下面的所有整数字面量的十进制值都是17:
let decimalInteger = 17
let binaryInteger = 0b10001       // 二进制的17
let octalInteger = 0o21           // 八进制的17
let hexadecimalInteger = 0x11     // 十六进制的17

//
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//类型别名（type aliases）就是给现有类型定义另一个名字。 == typeof
typealias AudioSample = UInt16

//元组
//元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。

let http404Error = (404, "Not Found")

//元组的内容分解（decompose）
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
// 输出 "The status code is 404"
println("The status message is \(statusMessage)")
// 输出 "The status message is Not Found"

//忽略的部分用下划线（_）标记
let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")
// 输出 "The status code is 404"

//通过下标来访问元组
println("The status code is \(http404Error.0)")
// 输出 "The status code is 404"
println("The status message is \(http404Error.1)")
// 输出 "The status message is Not Found"

//定义元组的时候给单个元素命名
let http200Status = (statusCode: 200, description: "OK")

println("The status code is \(http200Status.statusCode)")
// 输出 "The status code is 200"
println("The status message is \(http200Status.description)")
// 输出 "The status message is OK"

//可选类型 类似c#里面？来标示可空内容

// surveyAnswer 被自动设置为 nil
var surveyAnswer: String?

//possibleNumber.toInt返回的值就是一个可空变量
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

//可选的名字后面加一个感叹号（!）来获取值
if convertedNumber != nil {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

//可选绑定（optional binding）
//如果possibleNumber.toInt返回的可选Int包含一个值，
//创建一个叫做actualNumber的新常量并将可选包含的值赋给它。
if let actualNumber = possibleNumber.toInt() {
    println("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

//隐式解析可选类型

let possibleString: String? = "An optional string."
println(possibleString!) // 需要惊叹号来获取值
// 输出 "An optional string."
let assumedString: String! = "An implicitly unwrapped optional string."
println(assumedString)  // 不需要感叹号
// 输出 "An implicitly unwrapped optional string."

//断言
//如果条件判断为true，代码运行会继续进行；如果条件判断为false，代码运行停止

let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
//assert(age >= 0) //断言信息如果不需要，可以被省略

//基本运算符
//Swift 中是可以对浮点数进行求余
//Swift 也提供恒等===和不恒等!==这两个比较符来判断两个对象是否引用同一个对象实例

//空合运算符(Nil Coalescing Operator)
//??
let defaultColorName = "red"
var userDefinedColorName:String?   //默认值为nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

//区间运算符
//闭区间
for index in 1...5 {
    println("\(index) * 5 = \(index * 5)")
}
//半开区间
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    println("第 \(i + 1) 个人叫 \(names[i])")
}

//集合类型 (Collection Types)
//数组
var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList += ["Chocolate Spread","Cheese","Butter"]
//shoppingList[4...6] = ["Bananas", "Apples"]

for item in shoppingList {
    println(item)
}

for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}

var someInts = [Int]()
var threeDoubles = [Double](count: 3, repeatedValue:0.0)
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
//字典
var airports: [String:String] = ["TYO": "Tokyo", "DUB": "Dublin"]
airports["LHR"] = "London"
//通过给某个键的对应值赋值为nil来从字典里移除一个键值对
airports["APL"] = nil

for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}

var namesOfIntegers = Dictionary<Int, String>()
namesOfIntegers = [:]

//控制流

//For
for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
println("\(base) to the power of \(power) is \(answer)")

for var index = 0; index < 3; ++index {
    println("index is \(index)")
}

//Do-While

//if

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    println("It's very cold. Consider wearing a scarf.")
}

//switch ,不用写break

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    println("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    println("\(someCharacter) is a consonant")
default:
    println("\(someCharacter) is not a vowel or a consonant")
}

//区间匹配（Range Matching）
let countedThings = "stars in the Milky Way"
var naturalCount: String
switch count {
case 0:
    naturalCount = "no"
case 1...3:
    naturalCount = "a few"
case 4...9:
    naturalCount = "several"
case 10...99:
    naturalCount = "tens of"
case 100...999:
    naturalCount = "hundreds of"
case 1000...999_999:
    naturalCount = "thousands of"
default:
    naturalCount = "millions and millions of"
}
println("There are \(naturalCount) \(countedThings).")

//元组
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    println("(0, 0) is at the origin")
case (_, 0):
    println("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    println("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    println("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

//值绑定（Value Bindings）

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    println("on the x-axis with an x value of \(x)")
case (0, let y):
    println("on the y-axis with a y value of \(y)")
case let (x, y):
    println("somewhere else at (\(x), \(y))")
}

//Where

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    println("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    println("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    println("(\(x), \(y)) is just some arbitrary point")
}

//贯穿（Fallthrough）
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
println(description)

//函数

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}
println(halfOpenRangeLength(1, 10))

func sayHelloWorld() -> String {
    return "hello, world"
}
println(sayHelloWorld())

func sayGoodbye(personName: String) {
    println("Goodbye, \(personName)!")
}
sayGoodbye("Dave")

func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString {
        case "a", "e", "i", "o", "u":
            ++vowels
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            ++consonants
        default:
            ++others
        }
    }
    return (vowels, consonants, others)
}
let total = count("some arbitrary string!")
println("\(total.vowels) vowels and \(total.consonants) consonants")
//简写外部参数名
func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}

//默认参数值（Default Parameter Values）
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join(string: "hello", toString: "world", withJoiner: "-")
join(string: "hello", toString: "world")

//可变参数（Variadic Parameters）

//一个函数至多能有一个可变参数，而且它必须是参数表中最后的一个。
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8, 19)


//输入输出参数（In-Out Parameters）
//如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，
//那么就应该把这个参数定义为输入输出参数
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//函数类型（Function Types）

func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

//函数类型作为参数类型（Function Types as Parameter Types）

var mathFunction: (Int, Int) -> Int = addTwoInts
println("Result: \(mathFunction(2, 3))")

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    println("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

//函数类型作为返回类型（Function Type as Return Types）

func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)

//嵌套函数（Nested Functions）

//func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backwards ? stepBackward : stepForward
//}
//var currentValue = -4
//let moveNearerToZero = chooseStepFunction(currentValue < 0)
//// moveNearerToZero now refers to the nested stepForward() function
//while currentValue != 0 {
//    println("\(currentValue)... ")
//    currentValue = moveNearerToZero(currentValue)
//}
//println("zero!")


//闭包（Closures）

//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = sorted(names, backwards)

//闭包的函数体部分由关键字in引入
reversed = sorted(names, {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

//单表达式闭包隐式返回（Implicit Return From Single-Expression Clossures）
reversed = sorted(names, {s1, s2 in
    return s1 > s2
})

//参数名称缩写（Shorthand Argument Names）
//Swift 自动为内联函数提供了参数名称缩写功能，您可以直接通过$0,$1,$2来顺序调用闭包的参数。
reversed = sorted(names, {
    $0 > $1
})

//运算符函数（Operator Functions）
reversed = sorted(names, >)

//尾随闭包（Trailing Closures）
reversed = sorted(names){
    $0 > $1
}

//枚举（Enumerations）
//North，South，East和West不是隐式的等于0，1，2和3
enum CompassPoint {
    case North
    case South
    case East
    case West
}

//enum Planet {
//    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
//}

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}
//自动递增意味着Planet.Venus的原始值是2，依次类推。
enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
//使用枚举成员的rawValue属性可以访问该枚举成员的原始值：
let earthsOrder = Planet.Earth.rawValue
//通过参数为rawValue构造函数创建特定原始值的枚举
let possiblePlanet = Planet(rawValue: 7)

//类和结构体
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//结构体类型的成员逐一构造器(Memberwise Initializers for structure Types)

let vga = Resolution(width:640, height: 480)

//恒等运算符

//if tenEighty === alsoTenTighty {
//    println("tenTighty and alsoTenEighty refer to the same Resolution instance.")
//}

//延迟存储属性 lazy

//在变异方法中给self赋值(Assigning to self Within a Mutating Method)
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

//Type Methods
class SomeClass {
    class func someTypeMethod() {
        // type method implementation goes here
    }
}
SomeClass.someTypeMethod()


















