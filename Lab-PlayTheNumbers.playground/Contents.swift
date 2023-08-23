import UIKit

let randomInt1 = Int.random(in: 1..<10)
let randomInt2 = Int.random(in: 1..<10)
let randomInt3 = Int.random(in: 1..<10)
let randomInt4 = Int.random(in: 1..<10)
let randomInt5 = Int.random(in: 1..<10)

var randomNumArray: [Int] = [randomInt1, randomInt2, randomInt3, randomInt4, randomInt5]

var sortedNumArray : [Int] = []

sortedNumArray.append(contentsOf: randomNumArray.sorted())

print(sortedNumArray)

var myNumbers: [String: Int] = ["Lowest": sortedNumArray[0], "Highest": sortedNumArray[sortedNumArray.count - 1]]
var lowestNumber = myNumbers["Lowest"]
var highestNumber = myNumbers["Highest"]


print("The lowest number is... " + String(lowestNumber))
print("The highest number is... " + String(highestNumber))

if let lowestNumber = myNumbers["Lowest"] {
    myNumbers["Lowest"] = sortedNumArray[0]
}

if let highestNumber = myNumbers["Highest"] {
    myNumbers["Highest"] = sortedNumArray[sortedNumArray.count - 1]
}

print(lowestNumber)
print(highestNumber)
