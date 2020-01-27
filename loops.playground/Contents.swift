import UIKit

var str = "Hello, playground"

for count in 0...10
{
    print(count)
}

print("Tubbies Challenge")
var tubbies = ["TW", "D", "Lala", "Po"]

// closed range
for tubbyNumber in 0...tubbies.count - 1
{
    print(tubbies[tubbyNumber])
}

// half open range - up to but won't reach
for tubbyNumber in 0..<tubbies.count
{
    print(tubbies[tubbyNumber])
}

print("\nIterate through an array")
for tubby in tubbies
{
    print(tubby)
}
