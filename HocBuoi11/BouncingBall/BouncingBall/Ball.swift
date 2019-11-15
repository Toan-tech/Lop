//
//  Ball.swift
//  BouncingBall
//
//  Created by Toan-tech on 11/7/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit
// thư viện hỗ trợ làm game: SpriteKit

class BallView: UIView {

    var ballLayer: CAShapeLayer!
    var radius: CGFloat = 0.0
    var fillColor: UIColor!

    convenience init(center: CGPoint, radius: CGFloat, fillColor: UIColor) {
    self.init(frame: CGRect(x: center.x-radius
        , y: center.y-radius, width: radius * 2.0, height: radius * 2.0))
    self.radius = radius
    self.fillColor = fillColor
}

override func draw(_ rect: CGRect) {
    if ballLayer == nil {
        ballLayer = CAShapeLayer()
        ballLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
        ballLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(ballLayer)
    }
}
}
