//
//  File.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation
import struct UIKit.CGFloat
import struct UIKit.CGSize
import class UIKit.UIFont
import class UIKit.UIColor

public extension NSAttributedString {
    func contentSize(width: CGFloat) -> CGSize {
        let rect = boundingRect(with: CGSize(width: width,
                                             height: CGFloat.infinity),
                                options: [.usesLineFragmentOrigin,
                                          .usesFontLeading],
                                context: nil)
        return rect.size
    }

    static func attributedString(string: String?, font: UIFont = UIFont.systemFont(ofSize: 15), color: UIColor = .white) -> NSAttributedString? {
        guard let string = string else { return nil }

        let attributes = [NSAttributedString.Key.foregroundColor: color,
                          NSAttributedString.Key.font: font]

        let attributedString = NSMutableAttributedString(string: string, attributes: attributes)

        return attributedString
    }
}
