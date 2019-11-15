//
//  MainViewController.swift
//  DrawBrick
//
//  Created by Taof on 11/2/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onPlus(_ sender: Any) {
    counterView.counter += 1
    if counterView.counter == 8 {
        return
    }
    

}

}
