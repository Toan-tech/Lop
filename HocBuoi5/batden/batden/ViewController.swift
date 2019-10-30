//
//  ViewController.swift
//  batden
//
//  Created by Toan-tech on 10/19/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bulbImageView: UIImageView!
    
    @IBOutlet weak var bulbButton: UIButton!
    var isCheck: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // dù khi khai báo giá trị ban đầu là gì thì mình có thể set lại giá trị cho nó tại viewDidLoad
        isCheck = true
        kiemTra(check: isCheck)
//        bulbImageView.image = UIImage(named: "denbat")
//        // Do any additional setup after loading the view.
////        bulbButton.setTitle("Tắt đèn", for: UIControl.State.normal)
//        bulbButton.setTitle("Tắt đèn", for: .normal) //.normal thay cho UIControl.State
    // bo viền cho nút
        bulbButton.layer.cornerRadius = 10
    }

    @IBAction func onPress(_ sender: Any) {
// kiểm tra nếu check là true thì nhảy vào scope if, ngược lại thì nhảy vào scope else
//        if isCheck {    //tương đương: if isCheck == true
//            bulbImageView.image = UIImage(named: "dentat")
//            bulbButton.setTitle("Bật đèn", for: .normal)
//        } else {       //tương đương: if isCheck == false
//            bulbImageView.image = UIImage(named: "denbat")
//            bulbButton.setTitle("Tắt đèn", for: .normal)
//        }
        isCheck = !isCheck
        kiemTra(check: isCheck)
        
        
    }
    func kiemTra(check: Bool){
        if check {
            bulbImageView.image = UIImage(named: "dentat")
                     bulbButton.setTitle("Bật đèn", for: .normal)
        } else {
            bulbImageView.image = UIImage(named: "denbat")
                      bulbButton.setTitle("Tắt đèn", for: .normal)
        }
    }
}

