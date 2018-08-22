//: Playground - noun: a place where people can play

import UIKit

/*
 基础数据类型
 1. String
 2. Int
 3. UInt
 4. Float //浮点型
 5. Double //高精度浮点
 6. Character 只单个字母
 7. bool  true false  布尔类型
 */



/*
 关键字
 Optional 可选类型 使用可选类型来处理确实值的情况表示有值或者无值
 var 变量
 let 常量
 static 静态类型修饰符
 */

//变量声明

//整数
var a = 2
print(a + 2)
print(type(of: a))

var b = 3.14
print(type(of: b)) //浮点类型的字面量创建默认为double类型

var 变量 = "可以用中文么" //支持unicode 字符命名变量   开发中不推荐这么干

print(变量)


//可选类型
var optionalInt:Optional <Int>
//var optionalInt:Int?
//这两种写法效果是一样的, 查了资料可看了API大概了解了Optional 是一个枚举

/*
 也就是说在没有值的时候用None来表示
 case none
 
 有值的时候是放在这里面的 包装起来了
 case some(Wrapped)
 //初始化的方法  创建各种的变量
 大概明白他的意思 就是使用 optionalInt:Int? 这种语法糖来创建的的变量  并不是说指明了一个为Int类型的变量  而是说创建了一个为Optional 类型的变量 some里面的值可能为为string类型的  并不是说创建了一个为string 类型的变量   不过这样的好处估计是类型安全的一种处理
 public init(_ some: Wrapped)
 
 */

var str:String?

    str = "holle world!"

if str == nil {
    print("All this happened, more or less.")
}else{
    print(str?.utf16.count)
}

//强制解包  告诉程序说我这里一定会有值  当然如果为空的话程序会直接崩溃
var str2:String! = "312,32fs,fs,f"

print(str2!.split(separator: ","))







