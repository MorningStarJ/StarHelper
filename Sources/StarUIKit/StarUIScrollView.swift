//
//  StarUIScrollView.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import UIKit

public extension UIScrollView {
    func isNearBottomEdge(edgeOffset: CGFloat = 20) -> Bool {
        return contentOffset.y + frame.size.height + edgeOffset > contentSize.height
    }
    
    func isNearRightEdge(edgeOffset: CGFloat = 20) -> Bool {
        return contentOffset.x + frame.size.width + edgeOffset > contentSize.width
    }
}

