import UIKit

let numbers = [1, 2, 3, 4]
let increased = numbers.map({ $0 * 2})
print(increased)


let names = ["Fedor", "Maxim", "Ivan"]
print(names.map({"Ser \($0)"}))

let nums = ["1", "2", "3", "four", "5"]
print(nums.compactMap({ Int($0)}))

let guests = ["Gospodin Iven", "Miss Svetlana", "Gospodin Alexei", "Missis Elena", "Gospodin Vitalii"]
let filteredGuests = guests.filter({ $0.hasPrefix("Gospodin") })
print(filteredGuests)

let value = [1,2,3,4,5,6]
let filteredValue = value.filter({ $0 % 2 == 0 })
print(filteredValue)


let items = [1,2,3,4,5]
let sum = items.reduce(0, +)
print(sum)

let codes = ["abc", "def", "ghi"]
let text = codes.reduce("", +)
