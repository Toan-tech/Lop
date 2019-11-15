//
//  ViewController.swift
//  BouncingBall
//
//  Created by Toan-tech on 11/7/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ball: BallView!
    let radius: CGFloat = 50.0
    var y: CGFloat = 100
    let startY: CGFloat = 0
    var ball_origin_y: CGFloat = 0
    
    // khai báo 1 biến timer
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ball = BallView(center: CGPoint(x: view.bounds.midX, y: y),
                        radius: radius,
                        fillColor: UIColor.red)
        
        
//        UIView.animate(withDuration: 5) {
//            self.ball.center.y = self.view.frame.maxY
//        }
//        dropBall3()
//        dropBall()
//      dropBall2()
        
        view.addSubview(ball)
        
        //khởi tạo timer
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector
            (runTimer), userInfo: nil, repeats: true)
    }
    @objc func runTimer(){
        dropBall5()
    }
    
    func dropBall5(){
        // 50 là giá trị ban đầu của self.ball.frame.origin.y
        // Công thức ngay phía dưới để quả bóng nhảy 100 lần.
        self.ball.frame.origin.y += (self.view.frame.maxY - radius*2 - 50)/100
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runBack), userInfo: nil, repeats: true)
        }
    }
    @objc func runBack(){
        if self.ball.frame.origin.y <= y {
            timer.invalidate()
        }
        self.ball.frame.origin.y -= (self.view.frame.maxY - radius*2 - 50)/100
    }
    func dropBall(){
        print("dropBall: \(ball.center.y)")
        UIView.animate(withDuration: 2) {
            self.ball.frame.origin.y = self.view.frame.maxY - self.radius*2
        }
    }
    //dropBall2 là cách viết khác của dropBall, tác dụng như nhau
    func dropBall2(){
        print("dropBall2: \(ball.center.y)")
        ball_origin_y = ball.frame.origin.y
        UIView.animate(withDuration: 5) {
            /* So sánh frame và bounds
             Giống: Đều có Toạ Độ: x, y và số đo: width, height
             frame.width/height = bounds.width/height
             Khác:
             - frame: Toạ Độ so với Toạ Độ Gốc của cha
             - bounds: Toạ Độ so với Toạ Độ Gốc của chính nó
             */
            self.ball.frame.origin.y += self.view.bounds.height - self.ball_origin_y - self.ball.bounds.height
        }
    }
    
    func dropBall3(){
        print("dropBall3: \(ball.center.y)")
        //bóng rơi từ dộng cao y và nảy lên vị trí ban đầu
        ball_origin_y = ball.frame.origin.y
        UIView.animate(withDuration: 5, animations: {
            self.ball.frame.origin.y += self.view.bounds.height - self.ball_origin_y - self.ball.bounds.height
        }) { (_) in
            UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
                self.ball.frame.origin.y -= self.view.bounds.height - self.ball_origin_y - self.ball.bounds.height
            })
        }
    }

}

