//
//  main.swift
//  Hocbuoi2
//
//  Created by Toan-tech on 10/11/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import Foundation

print("Hello, World!")

//func bai4(){
//    print("Nhap vao so a: ")
//    let a = Int(readLine()!)!
//    print("Nhap vao so b: ")
//    let b = Int(readLine()!)!
//
//    if b == 0 {
//        print("b = 0")
//    } else {
//        if a % b == 0 {
//            print("\(a) chia hết cho \(b)")
//        } else {
//            print("\(a) khong chia het cho b")
//        }
//    }
//}
//
//bai4()

// kiem tra so nguyen to
//func soNguyenTo(){
//    print("Nhap vao so n: ")
//    let n = Int(readLine()!)!
//
//    isSoNguyenTo(n: n)
//}
//
//func isSoNguyenTo(n: Int){
//    var demUocSo = 0
//    if n < 2{
//        print("\(n) khong phai la so nguyen to")
//    } else {
//        for i in 2...Int(sqrt(Double(n))){
//            if n % i == 0{
//                demUocSo += 1
//                break
//            }
//        }
//        if demUocSo == 0 {
//            print("\(n) la so nguyen to")
//        } else {
//            print("\(n) khong phai la so nguyen to")
//        }
//    }
//}
//soNguyenTo()

//func max3So(a: Int = 6, b: Int = 8, c: Int = 20) -> Int {
//    var m = a
//    if m < b {
//m = b }
//if m > c {
//return m }
//return c }
//var x = max3So()
//print(max3So())


//CẤU TRÚC "guard let"
//var y: Int?
//var x: Int!
//y = 7 //Để xem cách hoạt động của guard let thì xoá dòng này sau đó để lại.
//func checkGuardElse(){
//    guard let a = y else {
//    print("y \(y)")
//    return
//}
//print(a)
//}
//checkGuardElse()
//
//
//CẤU TRÚC "if let"
//y = 5 //chạy y = 5 hoặc y = nil
//y = nil
//func checkIflet(){
//    if let a = y {
//        print(a)
//    }
//    print("y \(y)")
//}
//checkIflet()


 // khai báo biến option
//let option = 5
//switch option {
//case 0...10:
//    print("Case 0...10")
//    // fallthrough: Thực thi trường hợp tiếp theo mà ko quan tâm có đúng Case hay không. Nếu bỏ fall through của case 11...20 mà vẫn giữ fall through của case 21...30 thì sẽ không chạy fall through của case 21...30.
//    fallthrough
//case 11...20:
//    print("Case 11...20")
//    // fallthrough: Thực thi trường hợp tiếp theo mà ko quan tâm có đúng Case hay không
//    fallthrough
//case 21...30:
//    print("Case 21...30")
//    // Nếu đã gọi ra hết các trường hợp case thì ko cần default, nếu ko gọi ra hết case thì default sẽ rơi vào các trường hợp còn lại
//default:
//    print("Default case")
//}

//print("""
//Nhập vào điểm trung bình của học sinh và in ra màn hình xếp loại tương ứng với mức điểm đó
//(xếp hạng: (>8: Giỏi,  [5, 8): Trung bình, <5: Khá]), nếu nhập ngoài khoảng [1, 10] thì yêu cầu nhập lại)
//""")

//func xephang() {
// print("Nhập điểm:")
//    let ĐTB = Int(readLine()!)!
//    switch ĐTB {
//    case 0..<5:
//        print("Trung bình")
//    case 5..<8:
//        print("Khá")
//    case 9...10:
//        print("Giỏi")
//    default:
//        xephang()
//    }
//}

//func xephang() {
//    print("Nhập điểm")
//    let x = Int(readLine()!)!
//    if x < 1 {
//        xephang()
//    } else {
//        if x < 5 {
//            print("Trung bình")
//        } else {
//            if x < 8 {
//                print("Khá")
//            } else {
//                if x <= 10 {
//                    print("Giỏi")
//                } else {
//                    xephang()
//                }
//            }
//        }
//    }
//}
//xephang()

//CẤU TRÚC VÒNG LẶP FOR

//for i in 0...10{
//    print(i)
//}

//CẤU TRÚC VÒNG LẶP WHILE
//var n = 1
//while (n<10){
//print(n)
//n += 1 // tương đương: n = n + 1
//}

//CẤU TRÚC VÒNG LẶP REPEAT WHILE
//var x = 1
//repeat {
//    print(x)
//    x += 1
//} while (x<10)

//CẤU TRÚC MẢNG (có for)
//let arrays = [6, 9, 50, 90]
//for (index, item) in arrays.enumerated(){
//    print(index, item)
//}
////cách trên với cách dưới cho cùng kết quả
//for i in 0..<arrays.count{
//    print(i, arrays[i])
//}


