//
//  PingHelpers.swift
//  Ping-iOS
//
//  Created by Blake Tsuzaki on 7/21/17.
//  Copyright © 2017 Iolani School. All rights reserved.
//

import Foundation

extension CABasicAnimation {
    func swapToFromValues() {
        let fromValue = self.fromValue
        self.fromValue = toValue
        toValue = fromValue
    }
}

extension UITouch {
    func isContained(in view: UIView) -> Bool {
        let point = location(in: view)
        
        if point.x < 0 || point.x > view.frame.width { return false }
        if point.y < 0 || point.y > view.frame.height { return false }
        
        return true
    }
}

extension UIColor {
    func lighter(by percentage: CGFloat = 30) -> UIColor {
        return self.adjust(by: abs(percentage))
    }
    func darker(by percentage: CGFloat = 30) -> UIColor {
        return self.adjust(by: -1 * abs(percentage) )
    }
    
    func adjust(by percentage: CGFloat = 30) -> UIColor {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        
        if(self.getRed(&r, green: &g, blue: &b, alpha: &a)){
            return UIColor(red: min(r + percentage/100, 1.0),
                           green: min(g + percentage/100, 1.0),
                           blue: min(b + percentage/100, 1.0),
                           alpha: a)
        }else{
            return UIColor()
        }
    }
}
