//
//  MaxSum.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public class MaxSum {
//    public static func findMaxSum(numbers: Array<Int>) -> Int {
//        let sort = numbers.sorted(by: <)
//        return sort[sort.count-2] + sort[sort.count-1]
//    }
    public static func findMaxSum(numbers: Array<Int>) -> Int {
        var max1 = -1
        var max2 = -1
        for number in numbers {
            if number > max1 {
                max2 = max1
                max1 = number
            } else if number > max2 {
                max2 = number
            }
        }
        return max1 + max2
    }
}
