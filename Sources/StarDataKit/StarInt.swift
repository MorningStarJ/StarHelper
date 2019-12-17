//
//  File.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation
import struct UIKit.CGFloat

public extension Int {
    
    var floatValue: CGFloat {
        
        return CGFloat(self)
    }
    
    var float: Float {
        
        return Float(self)
    }
    
    var doubleValue: Double {
        
        return Double(self)
    }
    
    var stringValue: String {
        
        return String(self)
    }
    
    var uintValue: UInt {
        
        return UInt(self)
    }
}
