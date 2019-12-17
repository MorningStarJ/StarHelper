//
//  StarUIAlertController.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import UIKit

public extension UIViewController {
    func alert(title: String? = nil,
                       message: String? = nil,
                       style: UIAlertController.Style = .alert,
                       actions: (actionTitle: String, style: UIAlertAction.Style, handler: (() -> Void)?)...) {
        let alertVc = UIAlertController(title: title, message: message, preferredStyle: style)
        actions.forEach { actionDetail in
            let action = UIAlertAction(title: actionDetail.actionTitle, style: actionDetail.style) { _ in
                actionDetail.handler?()
            }
            alertVc.addAction(action)
        }
        present(alertVc, animated: true)
    }
}

