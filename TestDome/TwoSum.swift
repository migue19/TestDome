//
//  TwoSum.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public class TwoSum {
   public static func findTwoSum(numbers: Array<Int>, sum: Int) -> Array<Int>? {
       if numbers.count < 2 || numbers.isEmpty {
           return nil
       }
       for i in 0...numbers.count - 2 {
            for j in i+1...numbers.count - 1 {
                if numbers[i] + numbers[j] == sum {
                    return [i,j]
                }
            }
        }
       return nil
   }
}
