//
//  File.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation
import struct UIKit.CGPoint
import struct UIKit.CGFloat

public extension CGPoint {
    func distance(point: CGPoint) -> CGFloat {
        let x = (point.x - self.x)
        let y = (point.y - self.y)
        return CGFloat(sqrt((x*x)+(y*y)))
    }
}
