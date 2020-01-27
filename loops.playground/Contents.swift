import UIKit

//var rollValue = Int.random(in: 1...6)
//var rollNumber = 1
//print("Roll number: \(rollNumber) was a \(rollValue)")
//while rollValue != 6
//{
//    rollValue = Int.random(in: 1...6)
//    rollNumber += 1
//    print("Roll number: \(rollNumber) was a \(rollValue)")
//}
//print("It took \(rollNumber) rolls to roll a 6.")

var rollValue: Int
var rollNumber = 0
repeat
{
    rollValue = Int.random(in: 1...6)
    rollNumber += 1
    print("Roll number: \(rollNumber) was a \(rollValue)")
} while rollValue != 6
print("It took \(rollNumber) rolls to roll a 6.")

var enrollment: [String] = []

var anotherCourseEnrollment = [String]()
