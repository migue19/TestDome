//
//  UserSubscription.swift
//  TestDome
//
//  Created by Miguel Mexicano Herrera on 11/02/24.
//

import Foundation
public class Subscription {
    public var type: String
    public weak var user: User?
    
    public init(type: String, user: User? = nil) {
        self.type = type
        self.user = user
    }
}

public class User {
    public var name: String
    public var subscriptions: Array<Subscription>
    
    public init(name: String) {
        self.name = name
        self.subscriptions = []
    }
}
