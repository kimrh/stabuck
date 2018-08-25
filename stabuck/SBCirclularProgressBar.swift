//
//  SBCirclularProgressBar.swift
//  stabuck
//
//  Created by Minho on 2018. 8. 25..
//  Copyright © 2018년 kimrh. All rights reserved.
//

import UIKit

class SBCirclularProgressBar: UIView {
    var startAngle: CGFloat = CGFloat(135.0).radians()
    var endAngle: CGFloat = CGFloat(405.0).radians()
    ///1.0 to 0.0 as CGFloat
    var percent: CGFloat = 0.0
    let pathLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pathLayer.frame = bounds
        pathLayer.path = circlePath().cgPath
    }
    
    func configure() {
        pathLayer.frame = bounds
        pathLayer.lineWidth = 2.0
        pathLayer.fillColor = UIColor.clear.cgColor
        pathLayer.strokeColor = UIColor.brown.cgColor
        layer.addSublayer(pathLayer)
    }
    
    func circlePath() -> UIBezierPath {
        let bezierPath = UIBezierPath()
        
        bezierPath .addArc(withCenter: CGPoint(x: frame.size.width / 2, y: frame.size.height / 2), radius: frame.size.width / 2 - 10, startAngle: startAngle, endAngle: startAngle + (endAngle - startAngle) * percent, clockwise: true)
        
        return bezierPath
    }
}

extension CGFloat {
    func radians() -> CGFloat {
        return self * CGFloat(Double.pi) / 180.0
    }
    
    func pixelFromPoint() -> CGFloat {
        return self / UIScreen.main.scale
    }
}
