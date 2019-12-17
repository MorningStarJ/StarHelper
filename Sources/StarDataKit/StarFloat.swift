//
//  StarFloat.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation
import struct UIKit.CGFloat

public extension Float {
    
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var double: Double {
        return Double(self)
    }
}
