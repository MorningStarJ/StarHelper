//
//  StarDouble.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation

public extension Double {
    var stripTrailingZeros: String //去掉多余的0
    {
        let str: NSString = String(self) as NSString
        return "\(str.doubleValue)"
    }
    
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var float: Float {
        return Float(self)
    }
    
    var nsintValue: NSInteger {
        return NSInteger(self)
    }
    
    var intValue: Int {
        return Int(self)
    }
    
    var oneDecimalPoints: Double {
        return Double(Int(self * 10)) / 10
    }
}
