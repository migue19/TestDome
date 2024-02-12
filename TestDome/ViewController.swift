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
        
        
        let fireDragon = FireDragon()
        print(fireDragon)
        do {
            let egg = fireDragon.lay()
            try print(egg.hatch())
            try print(egg.hatch())
        } catch {
            print(error)
        }
        
        let prod = Product(quantity: 1)
        prod.quantity = 2
        print(prod.quantity)
    }
}

public class Product {
    public var name: String?
    
    public var quantity: Int {
        didSet {
            if quantity < 1 {
                quantity = 1
            }
        }
    }
    
    public init(quantity: Int) {
        self.quantity = quantity;
    }
}
