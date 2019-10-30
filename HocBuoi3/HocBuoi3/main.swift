//
//  main.swift
//  HocBuoi3
//
//  Created by Toan-tech on 10/12/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import Foundation

print("Hello, World!")

//var names: [String] = ["Hoa", "Nam", "Phong"] //đây là cách khai báo đầy đủ
//duyệt mảng

//for i in names{
//    print("---------")
//    //duyệt mảng kèm index
//    for (index, i) in names.enumerated() {
//        print("\(index) - \(i)")
//    }}
//    print("-----------")
//    //một cách khác duyệt mảng lấy ra index
//    for i in 0..<names.count{
//        print("\(i) - \(names[i])")
//}
//// in ra phần tử thứ bao nhiêu đó của mảng
//print(names[1])
////thêm phần tử vào mảng
//
//    names.append("Chung") // append truyền vào một phần tử
//    names.append(contentsOf: ["An", "Hanh"]) // append truyền vào một mảng
///Users/toan-tech/Desktop/Baitapbuoi3
//print("---------")
//print(names) //in mảng
//
////thay thế giá trị phần tử trong mảng
//names[1] = "Long"
//print(names)
//
//// xoá phần tử trong mảng
//// xoá phần tử theo index
//names.remove(at: 3) //xoá phần tử thứ 4
//// xoá tất cả các phần tử
//names.removeAll()
//// xoá phần tử đầu tiên
//names.removeFirst()
//// xoá phần tử cuối cùng
//names.removeLast()

//thêm một mảng phần tử
//names += ["Hương", "Ly"]
//print(names)


/* Khai báo một mảng có 5 phần tử là các chuỗi “An”,“Long”,"Trang", "Nam", "Lam"
 - Chèn tên mới “Quang" vào vị trí 2.
 - Xóa tên ở cuối mảng
 - Khai báo biến t có giá trị là “Nhung”, kiểm tra xem biến t có trong mảng hay không ?
 */
//func mang() {
//var names: [String] = ["An", "Long", "Trang", "Nam", "Lam"]
//print(names)
//names.insert("Quang", at: 1)
//print(names)
//names.removeLast()
//print(names)
//let t: String = "Nhung"
//var m: Int = 0
//for i in names{
//    if t == i {
//        m = 1
//        break
//    } else {
//        m = 0
//    }
//}
//if m == 1 {
//    print("Có Nhung trong mảng")
//} else {
//    print("Không có Nhung trong mảng")
//    }}
//mang()


//func kiemTraMang(){
//    var mang: [String] = ["An", "Long", "Trang", "Nam", "Lam"]
//
//    print(mang)
//    // - Chèn tên mới “Quang" vào vị trí 2.
//    mang.insert("Quang", at: 2)
//    print(mang)
//
//    // - Xóa tên ở cuối mảng
//    mang.removeLast()
//    print(mang)
//
//    //- Khai báo biến t có giá trị là “Nhung”, kiểm tra xem biến t có trong mảng hay không ?
//    let t = "Nhung"
//    var isCheck: Bool = false
//    for i in mang{
//        if t == i {
//            isCheck = true
//            break
//        }
//    }
//
//    if isCheck {
//        print("Có Nhung")
//    }else{
//        print("Không có Nhung")
//    }
//}
// tạo dictionary rỗng
var dictionaryOne = [String: String]()
var dictionaryTwo = [Int: String]()
// tạo dictionary 2 phần tử
var airports: [String: String] = ["NoiBai": "Hà Nội", "SaoVang": "Thanh Hoá"] //giá trị có thể giống nhau nhưng key phải KHÁC nhau
print(airports)

//đếm phần tử của dictionary
print(airports.count)

//duyệt dictionary
for item in airports{
    print("Key: \(item.key) - value \(item.value)")
    print(item)
}

print("--------")
// duyệt các dictionary the key
for item in airports.keys{
    print("Key: \(item) - value \(airports[item])")
}

print("----------")
//đuyệt dictionary theo value
for item in airports.values{
    print(item)
}

print("----------")
//thêm phần tử vào dictionary
airports["Sao Vàng"] = "Thanh Hoá"
print(airports)

//xoá toàn bộ phần tử của dictionary
//airports.removeAll()

//xoá phần tử theo key
airports.removeValue(forKey: "SaoVang")
print(airports)

//cập nhật giá trị phần tử
airports.updateValue("Xứ Thanh", forKey: "Sao Vàng")
print(airports)
//cập nhật giá trị phần tử cách 2
airports["NoiBai"] = "Thủ đô"
print(airports)
