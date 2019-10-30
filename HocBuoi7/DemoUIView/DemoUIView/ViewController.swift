//
//  ViewController.swift
//  DemoUIView
//
//  Created by Toan-tech on 10/26/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var widthSlider: UISlider!
    
    @IBOutlet weak var rotateSlider: UISlider!
    
    @IBOutlet weak var radiusSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func onChangeWidth(_ sender: UISlider) {
        myView.transform = CGAffineTransform(scaleX: CGFloat(widthSlider.value) * CGFloat(2), y: CGFloat(widthSlider.value) * CGFloat(2))
    }
    
    
    @IBAction func onChangeRotate(_ sender: UISlider) {
//        print(sender.value)
        myView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateSlider.value)*CGFloat.pi)
        print(myView.bounds.width)
//        print(myView.frame.height)
    }
    
    
    @IBAction func onChangeRadius(_ sender: UISlider) {
//        print(sender.value)
        myView.layer.cornerRadius = myView.bounds.width/2 * CGFloat(radiusSlider.value)
    }
    
}

