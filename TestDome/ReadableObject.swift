//
//  ReadableObject.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public protocol Readable {
    func read() -> String
    func isReadable() -> Bool
}

public class ReadableObject: Readable {
    var val: String
    public init(val: String) {
        self.val = val
    }
    
    public func read() -> String {
        return val
    }
    
    public func isReadable() -> Bool {
        return true
    }
}

public class ReadOnceObject: Readable {
    var isFirstTime = true
    public func read() -> String {
        return ""
    }
    public func isReadable() -> Bool {
        if isFirstTime {
            isFirstTime = false
            return true
        }
        return false
    }
}
