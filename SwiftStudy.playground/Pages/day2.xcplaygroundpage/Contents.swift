//: [Previous](@previous)

import Foundation

/*
 运算符
 
 */

//一元运算里面最常用的就是!a 去反这样的运算了  只对一个目标使用的运算 并不是很多 swift里面的a!这样的强制解包 理论上也是算的
//一元加减

let three = 3
let minusThree = -three

print(minusThree)
let plusThree = -minusThree // plusThree equals 3, or "minus minus three"
print(plusThree)

let minusSix = -6
let alsoMinusSix = +minusSix
print(alsoMinusSix)



//赋值运算

let b = 10
var a = 5

a = b
print(a)

//这个很像Python里面的元组多个赋值  左侧的等于右侧的 这个还是比较方便的  代码也简单了很多
var (x, y) = (10, 20)

print(x, y)
//这样可以直接交换连个的值还是比较爽的   最起码少些了最少两行代码
 (x, y) = (y, x)

print(x, y)


print(x + y)
print(x - y)
print(x * y)
print(x / y)
//可以使用+号来拼接字符串  这个可能也是借鉴了其他的语言 这
var str = "天气"
str =  str + "真好!"

print(str)

//我觉得这个比较方便  之前在objective-c 里面还要写个函数来判断又少写了很多代码
var name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

//元组以从左到右的顺序比较大小，一次一个值，直到找到两个不相等的值为止。如果所有的值都是相等的，那么就认为元组本身是相等的。比如说：


(1, "zebra") < (2, "apple")   // true because 1 is less than 2
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")



//三元运算  还是个其他语言一样并没有太多的变化


print(a > 1 ? a : b)

//新增了一种合并空的运算  更加减省了代码量

var userName:String?
var nickName = "小明"
print("这个是\(userName ?? nickName)")



//区间运算

//0...5 闭合区间  ...点来表示闭合区间

//半开区间 0 ..< 5
// 单侧区间 [...2] [2...]
for itme in 0...5 {
    print(itme)
}




/*逻辑运算  这个好像并没有什么区别
 逻辑 非  ( !a )
 逻辑 与  ( a && b )
 逻辑 或  ( a || b )
 */




//: [Next](@next)

