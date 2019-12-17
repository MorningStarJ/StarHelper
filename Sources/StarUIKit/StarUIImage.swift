//
//  StarUIImage.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import UIKit
// MARK: - Static func
public extension UIImage {
    static func image(_ color: UIColor, height: CGFloat? = nil) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: height ?? 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    static func currentScreen(_ view: UIView) -> UIImage? {
        UIGraphicsBeginImageContext(view.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        view.layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

public extension UIImage {
    func resizeImage(newWidth: CGFloat) -> UIImage {
        let scale = newWidth / size.width
        let newHeight = size.height * scale
        UIGraphicsBeginImageContextWithOptions(CGSize(width: newWidth,
                                                      height: newHeight),
                                               false,
                                               0)
        draw(in: CGRect(x: 0, y: 0,
                             width: newWidth,
                             height: newHeight))

        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}
