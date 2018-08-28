//: [Previous](@previous)

import Foundation
//集合


var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// prints "someInts is of type [Int] with 0 items."


var treeDoubles = Array(repeating: 0.0, count: 3)


print(treeDoubles)


var otherTreeDoubles = Array(repeating: 3.0, count: 3)
//两个数组相加是元素的数量增多
let sixDoutbles = treeDoubles + otherTreeDoubles
//连个各有3个元素的数组加一起变成了一个新的六个元素的数组
print(sixDoutbles)

print(sixDoutbles.count)

//判断数组是否为空sixDoutables.isEmppty




//: [Next](@next)
