//
//  StarUIFont.swift
//  
//
//  Created by MorningStar on 2020/5/6.
//

import Foundation
import UIKit

extension UIFont {
    public enum Style: String {
        case light = "Light"
        case medium = "Medium"
        case regular = "Regular"
        case semibold = "Semibold"
        case thin = "Thin"
        case ultralight = "Ultralight"
    }
    
    static public func pingfangSC(style: Style = .regular, fontSize: CGFloat) -> UIFont {
        return UIFont(name: "PingFangSC-\(style.rawValue)", size: fontSize)!
    }
}
