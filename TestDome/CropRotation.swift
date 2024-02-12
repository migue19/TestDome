//
//  CropRotation.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public enum CropError: Error {
    case cropNotPresent
}

public class CropRotation {
    var cropArray: [CropEntity] = []

    public func addNext(currentCrop: String, nextCrop: String) {
        if let index = cropArray.firstIndex(where: {$0.currentCrop == currentCrop}) {
            cropArray[index] = CropEntity(currentCrop: currentCrop, nextCrop: nextCrop)
        } else {
            cropArray.append(CropEntity(currentCrop: currentCrop, nextCrop: nextCrop))
        }
    }
    
    public func getNext(currentCrop: String) throws -> String {
        if let index = cropArray.firstIndex(where: {$0.currentCrop == currentCrop}) {
            return cropArray[index].nextCrop
        } else {
            throw CropError.cropNotPresent
        }
    }
}
struct CropEntity {
    let currentCrop: String
    let nextCrop: String
}
