//
//  ViewController.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let read = ReadOnceObject()
        print(read.isReadable())
        print(read.isReadable())
        
        let usr = User(name: "John Doe")
        let sub = Subscription(type: "Cellphone", user: usr)

        usr.subscriptions.append(sub)
        print(usr)
        
        //let two = TwoSum.findTwoSum(numbers: [1, 3, 5, 7, 9], sum: 12)
        let two = TwoSum.findTwoSum(numbers: [3,1,5,7,5,9], sum: 10)
        print(two ?? "")
        let three = TwoSum.findTwoSum(numbers: [], sum: 12)
        print(three ?? "")
        
        do {
            let cropRotation = CropRotation()
            cropRotation.addNext(currentCrop: "Wheat", nextCrop: "Barley")
            cropRotation.addNext(currentCrop: "Barley", nextCrop: "Fallow")
            
            print(try cropRotation.getNext(currentCrop: "Wheat"))
            print(try cropRotation.getNext(currentCrop: "Barley"))
            print(try cropRotation.getNext(currentCrop: "Fallow"))
        } catch CropError.cropNotPresent {
            print("Crop not present")
        } catch {
            print("Other Error")
        }
        print(MaxSum.findMaxSum(numbers: [ 5, 9, 7, 11 ]))
        
        print(SpecialActions.matchKeyCombo(sequence: "QEEAZCC"))
    }
}
public class SpecialActions {
    public static func matchKeyCombo(sequence: String) -> Bool {
        var sequence = sequence.uppercased()
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
