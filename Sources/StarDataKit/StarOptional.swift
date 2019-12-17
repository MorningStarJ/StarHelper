//
//  File.swift
//  
//
//  Created by MorningStar on 2019/12/17.
//

import Foundation

//出自：Swift GG 实用的可选项（Optional）扩展 https://swift.gg/2018/11/19/useful-optional-extensions/
public extension Optional {
    /// 可选值为空的时候返回 true
    var isNone: Bool {
        switch self {
        case .none:
            return true
        case .some:
            return false
        }
    }

    /// 可选值非空返回 true
    var isSome: Bool {
        return !isNone
    }

    func someDo(_ closure: () throws -> ()) rethrows {
        if isSome {
            try closure()
        }
    }

    func someDo(_ closure: (Wrapped) throws -> ()) rethrows {
        if let value = self {
            try closure(value)
        }
    }

    func noneDo(_ closure: () throws -> ()) rethrows {
        if isNone {
            try closure()
        }
    }

    func or(_ other: Optional) -> Optional {
        switch self {
        case .none: return other
        case .some: return self
        }
    }

    func resolve(with error: @autoclosure () -> Error) throws -> Wrapped {
        switch self {
        case .none: throw error()
        case .some(let wrapped): return wrapped
        }
    }
}
