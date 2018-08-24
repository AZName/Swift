//: [Previous](@previous)

import Foundation

//字符串


//1. 字面量创建
let str = "这是一个字符串"

print(str)

let someString = """

    The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."

"""


print(someString)

//判断是否为空可以直接使用isEmpty 来判断  在也不用想oc 里面那样写一堆的判断  感动到哭有没有


//for character in someString {
//    print(character)
//}



//Character 是字符串的一个子集  且值包含一个元素
//你不能把 String或者 Character追加到已经存在的 Character变量当中，因为 Character值能且只能包含一个字符。
let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString = String(catCharacters)
print(catString)

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2


var instruction = "look over"
instruction += string2


let exclamationMark: Character = "!"
welcome.append(exclamationMark)


//站位符是\()里面直接加入参数 不需要站位符了 这样用起来也是挺方便的
let multipier = 2
let message = "这是个\(multipier)"

print(message)


//转义特殊字符 \0 (空字符)， \\ (反斜杠)， \t (水平制表符)， \n (换行符)， \r(回车符)， \" (双引号) 以及 \' (单引号)；

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}" // $, Unicode scalar U+0024
let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // ?, Unicode scalar U+1F496



let eAcute: Character = "\u{E9}" // é
let combinedEAcute: Character = "\u{65}\u{301}" // e followed by


let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ
//要在字符串中取回 Character值的总数，使用字符串的 count属性：


let unusualMenagerie = "Koala ?, Snail ?, Penguin ?, Dromedary ?"
print("unusualMenagerie has \(unusualMenagerie.count) characters")


/*
 使用 startIndex属性来访问 String中第一个 Character的位置。 endIndex属性就是 String中最后一个字符后的位置。所以说， endIndex属性并不是字符串下标脚本的合法实际参数。如果 String为空，则 startIndex与 endIndex相等。
 
 使用 index(before:) 和 index(after:) 方法来访问给定索引的前后。要访问给定索引更远的索引，你可以使用 index(_:offsetBy:) 方法而不是多次调用这两个方法。
 
 你可以使用下标脚本语法来访问 String索引中的特定 Character。
 */

let greeting = "Guten Tag!"
print(greeting[greeting.startIndex])

greeting[greeting.startIndex]
//开始和结束的索引  想要访问最后一个 就要用index(before)访问最后一个索引的前一个索引来获取这个字符串  这里有点挺繁琐的 估计是因为编码的原因
greeting[greeting.index(before: greeting.endIndex)]
//// !
greeting[greeting.index(after: greeting.startIndex)]
//// u

/// 从第一个开始往后的第七个字符
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a


//插入字符串
welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
print(welcome)


//删除字符串

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"



//: [Next](@next)
