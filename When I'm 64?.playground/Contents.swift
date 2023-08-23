import UIKit



class WhenIm64{
    var age: Int
    init(age: Int){
        self.age = age
    }
    
    func findWhenIm64() {
        var year = 2023
        var yearsTil64: Int
        var doomsday: Int
        yearsTil64 = 64 - age
        doomsday = year + yearsTil64
        print("\(yearsTil64) years until you will be 64")
        print("That year will be \(doomsday)")
    }
}

var matt = WhenIm64(age: 70)

matt.findWhenIm64()
