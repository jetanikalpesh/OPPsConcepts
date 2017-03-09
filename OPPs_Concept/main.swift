//
//  main.swift
//  OPPs_Concept
//
//  Created by iFlame on 08/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

print("Hello, World!")

//protocol protocolHuman {
//    var name : String? {get}
//    var address : String? {get}
//    var cellNumber : Int? {get set}
//    var age : Int! {get set}
//}

class human {

    let name : String!
    let address : String!
    var cellNumber : Int?
    var age : Int!
    
    //MARK:- Constructors
    init(name: String, address : String) {
        self.name = name
        self.address = address
    }
    
    init(name: String, address : String, age : Int) {
        self.name = name
        self.address = address
        self.age = age
    }
    

    //MARK:- Functions
    func walk(){
        print("Walk")
    }
    
    //nonnull && nulable
    
    func printDescription() {
        print("name ==>> \(name!)")
        print("address ==>> \(address!)")
        
        if cellNumber != nil && age > 18 && age < 30 && age != nil{
            
            print("cellNumber ==>> \(cellNumber!)")
            print("cellNumber ==>> \(age)")
        }
        
        if let mynum = cellNumber,
            let myAge = age, myAge > 18 && myAge < 30
            {
            print("cellNumber ==>> \(mynum)")
            print("myAge ==>> \(myAge)")
        }
    }
    
    func printDescription(message : String) {
        print("human ==>> \(message)")
        //self.printDescription()
    }
    
}

class student : human {

    var student_id : Int!
    var standard : Int!
    var subject : String!
    
    //MARK:- Constructors
    init(name: String, address : String, student_id : Int, standard : Int, subject : String) {
        super.init(name: name, address: address)
        self.student_id = student_id
        self.standard = standard
        self.subject = subject
    }
    
    //override init(name: String, address : String, age : Int) {
    //    super.init(name: name, address: address)
    //
    //}
    
    
    func result() -> String {
        return "pass"
    }
    
    func study(){
        print(" Study")
    }
    
    override func printDescription() {
        print("\n\n")
        print("student_id ==>> \(student_id)")
        print("standard ==>> \(standard)")
        print("subject ==>> \(subject)")
        print("\n\n")
        super.printDescription()
    }
    override func printDescription(message: String) {
        print("student ==>> \(message)")
        super.printDescription(message: message)

    }
}

class employee : human {
    
    var employee_id : Int!
    var jobName : String?
    
    func doAJob(){
        print(" JOB")
    }
}

//let object = student(name: "name", address: "address description")
let object = student.init(name: "Bansi", address: "Ahmedabad",student_id: 9, standard: 9, subject: "English")

object.cellNumber = 9988998899
object.age = 25


object.printDescription()
object.printDescription(message: "Custom Message")






////let object = student(name: "name", address: "address description")
////object.name = "Hello"
//
////HAS A relation
//print("object.name ==>> \(object.name)")
//
////IS A relation
//let objHuman : human = object





