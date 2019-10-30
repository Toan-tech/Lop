//
//  main.swift
//  ClassAndStruct
//
//  Created by Toan-tech on 10/28/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import Foundation


// khai báo class với thuộc tính có giá trị mặc định
class Bird {
    var name: String = ""
}

var bird1 = Bird()

class Car {
    var name: String
    let wheel: Int
    
    init(name: String, wheel: Int) {
        self.name = name
        self.wheel = wheel
    }

    func run(){
        print("Xe chạy")
    }
}

var car1 = Car(name: "BMW", wheel: 4)

// class là kiểu tham chiếu, tất cả dùng chung 1 bộ nhớ

var car2 = car1
car2.name = "Audi"
print(car2.name, car1.name)

struct Color {
    var name: String
}

// struct là kiểu tham trị, mỗi đối tượng dùng một bộ nhớ riêng
var color1 = Color(name: "Đỏ")
var color2 = color1
color2.name = "Xanh"
print(color1.name, color2.name)

struct Taxi {
    var times: Int
    var distance: Float
    var charge: Float = 0
    
    init(times: Int, distance: Float) {
        self.times = times
        self.distance = distance
    }
    
    mutating func money () -> Float {
        if self.distance <= 1 {
            self.charge = 5000*self.distance
        } else if distance <= 31 {
            self.charge = 5000 + (self.distance-1)*4000
        } else {
            self.charge = 5000 + 30*4000 + (self.distance-31)*3000
        }
        return self.charge
    }
}

let taxi1 = Taxi(times: 1, distance: 29)
let taxi2 = Taxi(times: 2, distance: 36)
let taxi3 = Taxi(times: 3, distance: 5)
let taxi4 = Taxi(times: 4, distance: 52)
let taxi5 = Taxi(times: 5, distance: 7.2)

