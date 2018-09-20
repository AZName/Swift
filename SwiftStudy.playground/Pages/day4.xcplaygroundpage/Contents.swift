//: [Previous](@previous)

import Foundation
//集合



/*
 1. 创建
 2. 添加
 3. 删除
 4. 修改
 5. 查询
 6. 排序

 */


/*
 数组
 */
// 创建
//第一种
var someInts = [Int]()
//第二中  这里是先指定这个数组里面元素的类型 然后在创建
var someInts1 : [Int] //构造器创建
    someInts1 = []
//3. 官方推荐的初始化的方式  不过第一种在官方文档上经常看到
var someInts2 = Array<Int> ()
//4. 字面量创建 并推断类型
var someInts3 = [1, 2, 3, 4, 5]
//5.指定数量 并添加默认值
var someInts4 = Array(repeating: 100, count: 3)

print("someInts\(someInts) \nsomeInts1\(someInts1.count) \nsomeInts2\(someInts2) \nsomeInts3\(someInts3)\nsomeInts4\(someInts4)")



//添加

// 第一种 追加
someInts.append(2);
//追加一个几个Range
someInts.append(contentsOf: 10...20)
// 第二种 插入
someInts1.insert(30, at: 0)
    //插入
someInts1.insert(contentsOf: 200...208, at: 0)

// 第三种 合并

let sumSome = someInts1 + someInts
    someInts += someInts1

//删除

//第一种 删除 索引位置的元素  并返回删除的元素值
someInts.remove(at: 1)
//第二种 从首个索引删除
someInts1.removeFirst(2)
//从尾巴开始删除  删除几个元素
someInts1.removeLast(2)
//删除Range 范围内的元素
someInts1.removeSubrange(1..<3)
//删除所有  是否保留默认元素
someInts1.removeAll(keepingCapacity: true)



















//var someInts = [Int]()
//print("someInts is of type [Int] with \(someInts.count) items.")
//// prints "someInts is of type [Int] with 0 items."
//
//
//var treeDoubles = Array(repeating: 0.0, count: 3)
//
//
//print(treeDoubles)
//
//
//var otherTreeDoubles = Array(repeating: 3.0, count: 3)
////两个数组相加是元素的数量增多
//let sixDoutbles = treeDoubles + otherTreeDoubles
////连个各有3个元素的数组加一起变成了一个新的六个元素的数组
//print(sixDoutbles)
//
//print(sixDoutbles.count)
//
////判断数组是否为空sixDoutables.isEmppty
//
//if sixDoutbles.isEmpty {
//    print("sixDoutbles为空")
//}
//
////添加新的元素
//
//
//
//
//
//

//: [Next](@next)
