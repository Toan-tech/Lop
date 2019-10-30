//
//  ViewController.swift
//  IamRich
//
//  Created by Toan-tech on 10/19/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rubyImageView: UIImageView!
    
    @IBOutlet weak var amRichLabel: UILabel!
    
    override func viewDidLoad() { //hàm viewDidLoad chỉ chạy 1 lần đầu tiên duy nhất
        super.viewDidLoad()
        
        rubyImageView.alpha = 0.0
//        amRichLabel.alpha = 0.0
        amRichLabel.center = CGPoint(x: view.center.x, y: view.center.y + 500)
        
        UIView.animate(withDuration: 2) {
            self.rubyImageView.alpha = 1.0
            self.amRichLabel.center.y = self.view.center.y + 200
        }
        
    }


}

