//
//  FireDragon.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public enum AlreadyHatchedError: Error {
    case alreadyHatched
}

public protocol Reptile {
    func lay() -> ReptileEgg
}

public class FireDragon: Reptile {
    public func lay() -> ReptileEgg {
        return ReptileEgg {
            FireDragon()
        }
    }
}

public class ReptileEgg {
    var isFirstTime = true
    let createReptile: () -> Reptile
    public init(createReptile: @escaping () -> Reptile) {
        self.createReptile = createReptile
    }

    public func hatch() throws -> Reptile {
        if isFirstTime {
            isFirstTime = false
            return createReptile()
        } else {
            throw AlreadyHatchedError.alreadyHatched
        }
    }
}
