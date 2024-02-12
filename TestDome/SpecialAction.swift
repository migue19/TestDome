//
//  SpecialAction.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public class SpecialActions {
    public static func matchKeyCombo(sequence: String) -> Bool {
        let sequence = sequence.uppercased()
        let a = sequence.numberOfOccurrencesOf(string: "QEE")
        let b = sequence.numberOfOccurrencesOf(string: "ZCC")
        if a == b {
            return true
        }
        if a == 0 && b == 0 {
            return true
        }
        return false
    }
}
extension String {
    func numberOfOccurrencesOf(string: String) -> Int {
        return self.components(separatedBy:string).count - 1
    }
}
