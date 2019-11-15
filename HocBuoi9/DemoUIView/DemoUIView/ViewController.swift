//
//  ViewController.swift
//  DemoUIView
//
//  Created by Toan-tech on 10/31/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // khởi tạo một UIView
    let myView = UIView()
    let width: CGFloat = 20.0
    let height: CGFloat = 20.0
    let shadowOffsetX: CGFloat = -50
    let shadowWidth: CGFloat = 1.25
    let shadowHeight: CGFloat = 0.5
    let shadowRadius: CGFloat = 5
    
   override func viewDidLoad() {
        super.viewDidLoad()

    // đặt frame cho UIView
    myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    
    //đặt myView nằm giưã UIView
    myView.center = view.center
    
    //đổ màu myView
    myView.backgroundColor = UIColor.red
    
    //thêm myView vào superView
    view.addSubview(myView)
    
    // gọi hàm
//    defaultShadow()
//    shadow2Chieu()
//    contactShadow()
    depthShadow()
}
    
    func defaultShadow (){
        // để hiện shadow bắt buộc có shadowColor và shadowOpacity
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        // nếu set shadowOffset = zero thì shadow 4 cạnh bằng nhau
        myView.layer.shadowOffset = .zero
    }
    
    func shadow2Chieu () {
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        // nếu truyền vào số âm thì shadow hướng ngược lại
        myView.layer.shadowOffset = CGSize(width: 20, height: 20)
    }
    
    func boTron (){
        myView.layer.cornerRadius = myView.frame.width/2
        myView.layer.masksToBounds = true
    }
    
    func useCliptoBuonds(){
        let viewCon = UIView()
        view.frame = CGRect(x: myView.frame.width/2, y: myView.frame.height/2, width: 150, height: 150)
        viewCon.backgroundColor = UIColor.yellow
        myView.addSubview(viewCon)
        
        //clipsToBounds = true thì ẩn phần vượt ngoài khu vực của view cha
        myView.clipsToBounds = true
    }
    /*
 Khác nhau giữa CGcolor và UIcolor
- Tương tác
     + Người dùng tương tác được view, button... nhưng không tương tác được với layer(chạm vào layer).
     + Tuy nhiên: Khi ấn button để thay đổi màu layer...thì vẫn được.
     - Đối tượng sử dụng
     + CG: layer
     + UI: view, button
     - Dung lượng:
     + Cứ 1 view tạo ra thì chiếm thêm một dung lượng bộ nhớ.
     + Layer là thuộc tính của view nên khi thêm layer sẽ ko tốn dung lượng.
 */

func contactShadow(){
    let shadowSize = 20.0
    //config layer
    let contactRect = CGRect(x: -shadowSize, y: 200 - (shadowSize * 0.4) + 20, width: 200 + shadowSize * 2, height: shadowSize)
    myView.layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
    myView.layer.shadowRadius = 5
    myView.layer.shadowOpacity = 0.4
}
    
    func depthShadow(){
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: 0, y: myView.frame.size.height))
        shadowPath.addLine(to: CGPoint(x: myView.frame.size.width, y: myView.frame.size.height))
        shadowPath.addLine(to: CGPoint(x: myView.frame.size.width + 20, y: myView.frame.size.height*2))
        shadowPath.addLine(to: CGPoint(x: -20, y: myView.frame.size.height*2))
        
        
//        shadowPath.move(to: CGPoint(x: width - shadowRadius / 2, y: height - shadowRadius / 2))
//        shadowPath.addLine(to: CGPoint(x: width - shadowRadius / 2, y: height - shadowRadius / 2))
//        shadowPath.addLine(to: CGPoint(x: width * shadowWidth, y: height + height*shadowHeight))
//        shadowPath.addLine(to: CGPoint(x: width *  -(shadowWidth - 1) + shadowOffsetX, y: height + (height * shadowHeight)))
        
        myView.layer.shadowPath = shadowPath.cgPath
        myView.layer.shadowRadius = shadowRadius
        myView.layer.shadowOffset = .zero
        myView.layer.shadowOpacity = 0.5
        myView.layer.shadowColor = UIColor.black.cgColor
    }
}
