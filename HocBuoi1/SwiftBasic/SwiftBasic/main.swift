//
//  main.swift
//  SwiftBasic
//
//  Created by Taof on 10/5/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

//print("Hello, World!")
//
//// chú thích 1 dòng
//
///*
// chú thích nhiều dòng
// abc
//*/
//
//// khai báo biến, từ khoá var
//var name = "Quỳnh" // đây là cách khai báo thiếu kiểu dữ liệu
//var age: Int = 5 // đây là cách khai báo đầy đủ, có cả kiểu dữ liệu
//
//// khai báo hằng số, từ khoá là let
//let cmnd: Int = 123456789 // hằng số không thể thay đổi giá trị
//
//// gán lại giá trị của biến name
//name = "Dũng"
//
//print("Nhập tên của bạn: ")
//var myName = readLine()! // readLine đọc dữ liệu nhập từ bàn phím, dấu chấm than biểu thị biến myName này không được phép không có giá trị (tức là không được nil)
//
//print("Tên của mình là \(myName)")

//print("Nhập họ: ")
//var ho: String = readLine()!
//print("Nhập tên")
//var ten: String = readLine()!
//print("Nhập tuổi")
//var age: Int = Int(readLine()!)! // ép kiểu String về Int, dấu chấm than ở trong biểu thị là dữ liệu nhập từ bàn phím là không được nil, dấu chấm than ở ngoài biểu thị là string đó có thể ép kiểu thành Int

// Ví dụ: "4" thì có thể ép về 4
// "A" không thể ép về số

// cộng chuỗi như cộng phép tính bình thường
// terminator để vô hiệu hoá việc ngắt dòng của lệnh print
//print("Họ và tên: \(ho + " " + ten)", terminator: "")
//print(", \(age) tuổi")


// Nhập từ bàn phím 2 số m, n
// Cộng và in ra màn hình tổng của m và n

// hàm
// từ khoá khai báo hàm là func:

// hàm không có tham số truyền vào
//func helloWorld(){
//    print("HelloWorld")
//}
//
//// gọi hàm
//helloWorld()
//
//// hàm có tham số truyền vào
//func xinChao(name: String){
//    print("Chào bạn \(name)")
//}
//
//// gọi hàm
//xinChao(name: "Quynh")
//
//// hàm có tham số truyền và gía trị trả về
//func ageFunc(x: Int) -> Int {
//    return x
//}
//
//let q = ageFunc(x: 18)
//print(q)

//tinhTong2So(a: 4, b: 5)
//tinhTienDien(soDien: 50, donGia: 1.674)
//doinhietdo(c: 25)
let t = doinhietdo(c: 25)
print(t)
let h = doinhietdo2(f: 77)
print (h)
