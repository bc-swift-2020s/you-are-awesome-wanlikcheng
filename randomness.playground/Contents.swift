import UIKit

let diceRoll = Int.random(in: 1...6)
print("You rolled a \(diceRoll)")

let randomDecimal = Double.random(in: -1.0...1.0)
print("Your random decimal number is \(randomDecimal)")

let trueFalse = Bool.random()
print("The answer is", trueFalse)

print("")

let result = Int.random(in: 1...4) + Int.random(in: 1...4) + Int.random(in: 1...4)
print("You rolled a", result)

if Bool.random() {
    print("Heads")
}
else {
    print("Tails")
}

let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are fabulous!"]
print(messages[Int.random(in: 0...messages.count-1)])

//some more techniques, shuffle and sort
var names = ["C", "A", "D", "E", "B"]
let shuffleNames = names.shuffled()
print(names, shuffleNames)
names.shuffle()
print(names)

//sorting
let sortedNames = names.sorted()
print("Sorted names =", sortedNames)
let reverseSortedNames = names.sorted(by: >)
print("Reverse sorted names =", reverseSortedNames)
