//: Playground - noun: a place where people can play
//: Created by GarveyCalvin(http://www.cnblogs.com/GarveyCalvin)

import UIKit

enum MyErrorHandling: ErrorType {
    
    case error1
    case error2
    
}

func myLoad(item: String?) throws -> String {
    defer {
        print("Handle 1")
    }
    
    defer {
        print("Handle 2")
    }
    
    guard let newItem = item else {
        throw MyErrorHandling.error1
    }

    
    return newItem
}

do {
    try myLoad(nil)
} catch {
    print("error")
}

do {
    try myLoad(nil)
} catch let error as NSError {
    print(error)
}

do {
    try myLoad(nil)
} catch MyErrorHandling.error1 {
    print("error1")
} catch MyErrorHandling.error2 {
    print("error2")
}

try? myLoad(nil)


// 声明

// 博文作者：GarveyCalvin
// 博文出处：http://www.cnblogs.com/GarveyCalvin
// 本文版权归作者和博客园共有，欢迎转载，但须保留此段声明，并给出原文链接，谢谢合作！

