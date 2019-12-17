//
//  StarUILayout.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import UIKit

extension UIView {
    
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        } else {
            return topAnchor
        }
    }
    
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomAnchor
        }
    }
    
    
    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.leadingAnchor
        } else {
            return leadingAnchor
        }
    }
    
    
    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.trailingAnchor
        } else {
            return trailingAnchor
        }
    }
    
    func topConstraint<T: UIView>(to view: T, constant c: CGFloat = 0) {
        topAnchor.constraint(equalTo: view.safeTopAnchor, constant: c).isActive = true
    }
    
    func bottomConstraint<T: UIView>(to view: T, constant c: CGFloat = 0) {
        bottomAnchor.constraint(equalTo: view.safeBottomAnchor, constant: c).isActive = true
    }
    
    func leadingConstraint<T: UIView>(to view: T, constant c: CGFloat = 0) {
        leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: c).isActive = true
    }
    
    func trailingConstraint<T: UIView>(to view: T, constant c: CGFloat = 0) {
        trailingAnchor.constraint(equalTo: view.safeTrailingAnchor, constant: c).isActive = true
    }
    
    func edge<T: UIView>(equalTo parentView: T?, inset: UIEdgeInsets = .zero) {
        guard let parentView = parentView else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: parentView.safeTopAnchor, constant: inset.top),
            leadingAnchor.constraint(equalTo: parentView.safeLeadingAnchor, constant: inset.left),
            parentView.safeBottomAnchor.constraint(equalTo: bottomAnchor, constant: inset.bottom),
            parentView.safeTrailingAnchor.constraint(equalTo: trailingAnchor, constant: inset.right)
            ])
    }
}
