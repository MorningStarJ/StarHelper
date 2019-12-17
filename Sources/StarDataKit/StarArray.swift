//
//  File.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation

public extension Array where Element: Hashable {
    var unique: [Element] {
        var uniq = Set<Element>()
        uniq.reserveCapacity(count)
        return filter {
            return uniq.insert($0).inserted
        }
    }
}
