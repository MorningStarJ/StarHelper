//
//  StarUIFont.swift
//  
//
//  Created by MorningStar on 2020/5/6.
//

import Foundation
import UIKit

public extension UIFont {
    enum Style: String {
        case light = "Light"
        case medium = "Medium"
        case regular = "Regular"
        case semibold = "Semibold"
        case thin = "Thin"
        case ultralight = "Ultralight"
    }
    
    static func pingfangSC(style: Style = .regular, fontSize: CGFloat) -> UIFont {
        return UIFont(name: "PingFangSC-\(style.rawValue)", size: fontSize)!
    }
}
