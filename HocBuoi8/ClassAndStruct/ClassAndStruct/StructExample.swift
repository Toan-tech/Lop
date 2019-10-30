//
//  StructExample.swift
//  ClassAndStruct
//
//  Created by Toan-tech on 10/28/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import Foundation

// khai báo struct không cần viết hàm khởi tạo
struct Location {
    var lat: Float
    let long: Float
}

var location = Location(lat: 1.32, long: 3.2)

//location.lat = 3.0
//print(location)

struct Location1 {
    var lat: Float
    let long: Float
    // sử dụng private để ở bên ngoài không gọi vào được trong struct
    private var area: String = "Asia"
    init(lat: Float, long: Float) {
        self.lat = lat
        self.long = long
    }
}

// khai báo struct có viết hàm khởi tạo
struct Animal {
    var name: String = "animal"
    var color: String = "đen"
    var feet: Int = 0
    
    // khởi tạo rỗng, để khởi tạo rỗng thì các thuộc tính phải có giá trị ban đầu
    init() {
    }
    
    // khởi tạo đầy đủ các thuộc tính
    init(name: String, color: String, feet: Int) {
        self.name = name
        self.color = color
        self.feet = feet
    }
    
    // khởi tạo 1 thuộc tính
    init(name: String) {
        self.name = name
        self.feet = 3
    }
    
    // khởi tạo 2 thuộc tính
    init(name: String, feet: Int) {
        self.name = name
        self.feet = feet
    }
}

// khởi tạo đối tượng animal1
let animal1 = Animal(name: "Chó", color: "Màu kem", feet: 4)
let animal2 = Animal()
let animal3 = Animal(name: "Cá")
//print(animal3)


struct Rectangle {
    // width, hight là các thuộc tính (properties)
    var width: Int = 1
    var height: Int = 1
    init() {
    }
    init(width: Int, height: Int){
        self.width = width
        self.height = height
    }
// area () là phương thức (method)
    func area () -> Int {
        return width * height
    }
    // thay đổi biến trong struct phải có mutating, đối với hàm class thì ko cần mutating
    mutating func scale(value: Int) -> Int {
        self.width *= value
        self.height *= value
        return area()
    }
}
var rec1 = Rectangle()
// vì area() khai báo trong struct nên rec1.area mới gọi được vì nó coi area() là thuộc tính của rec1
//print(rec1.area())
//print(rec1.scale(value: 2))

var rec2 = Rectangle(width: 2, height: 2)
//print(rec2.area())
//print(rec2.scale(value: 2))
