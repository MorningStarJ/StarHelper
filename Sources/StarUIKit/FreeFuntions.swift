//
//  FreeFuntions.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation

public func className<T>(_ className: T.Type) -> String {
    return String(describing: className).components(separatedBy: ".").last ?? ""
}
