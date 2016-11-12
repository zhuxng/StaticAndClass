//
//  ViewController.swift
//  static与class
//
//  Created by 朱星 on 2016/11/12.
//  Copyright © 2016年 朱星. All rights reserved.
//

import UIKit
class Person {
    // 给方法添加class关键字
    class func work() {
        ZXLog(message: "Type Method: Person: 警察.")
        
    }
//    使用static关键字创建类方法
    
    static func nameOfPerson(name: String) {
        ZXLog(message: "Type Method: Person name: \(name)")
    }
    // 可以和类方法重名, 以及一样的参数.
    func nameOfPerson(name: String) {
        ZXLog(message: "Type Method: Person name: \(name)")
    }
}
class Teacher: Person {
   override class func work() {
         ZXLog(message: "Type Method: Teacher: University Teacher")
    }
//    override class func work() {
//        ZXLog(message: "Type Method: Teacher: University Teacher")
//    }
    //MARK: - 下是错误的
//    可以通过把方法，属性或下标标记为final来防止它们被重写
    
//    override static func nameOfPerson(name: String) {
//        ZXLog(message: "Type Method: Person name: \(name)")
//    }
    
}
class Student: Person {
    
    // 子类Student的实例方法work(), 和父类的类方法work()没有关系, 二者不在同一个级别上, 不存在同名问题.
    func work() {
        ZXLog(message: "Instance Method: Student: University Student")
        
    }
   
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let per = Person()
        
        Person.work()
        //work()是父类方法
        Person.nameOfPerson(name: "zhuxing")
        // 父类的实例方法
        per.nameOfPerson(name: "edward")
        
        //子类的方法   直接调用父类的类方法
        
        Teacher.nameOfPerson(name: "susan")
        // 调用的是子类中重写父类的类方法work()
        Teacher.work()
        let stu = Student()
        // 子类Student的实例方法work()
         stu.work()
        Student.work()
        stu.nameOfPerson(name: "xxxxxxx")
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

