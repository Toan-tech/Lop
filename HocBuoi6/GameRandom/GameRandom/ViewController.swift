//
//  ViewController.swift
//  GameRandom
//
//  Created by Toan-tech on 10/24/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
   
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var reloadButton: UIButton!
    
    var random: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random = Int.random(in:1...100)
        print(random!)
        resultLabel.isHidden = true //isHidden = true: ẩn một đối tượng
//        reloadButton.isHidden = true
        //đặt thuộc tính keyboard cho TextField
        inputTextField.keyboardType = .numberPad //đầy đủ: UIKeyboardType.numberPad
        reloadButton.setImage(UIImage(named: "ic_reload"), for: .normal)
        //set lại title của Button là rỗng
        reloadButton.setTitle("", for: .normal)
        //set lại kích thước của Button
        reloadButton.frame.size = CGSize(width: 64, height: 64)
    }
    @IBAction func onCheck(_ sender: Any) {
        // nếu number bị nil thì không có gì xảy ra, ko nil thì mới chạy tiếp được code dưới
        guard let number = Int(inputTextField.text!) else {
            return
        }
        resultLabel.isHidden = false
        if number < random {
            resultLabel.text = "Bé quá"
        } else if number > random {
            resultLabel.text = "Lớn quá"
        } else {
            resultLabel.text = "Chúc mừng"
            reloadButton.isHidden = false
        }
    }
    
    @IBAction func onReload(_ sender: Any) {
    inputTextField.text = ""
    resultLabel.isHidden = true
    reloadButton.isHidden = true
    random = Int.random(in: 0...100)
    }
}

