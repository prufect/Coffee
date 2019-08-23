//
//  Items.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

let Items = [
    Item(name: "Drink 1",
         description: "Just the greatest think you will ever put into your mouth",
         image: "Illustration1",
         price: 9.99,
         type: .drink(.cold)),
    
    Item(name: "Drink 2",
         description: "Just the greatest think you will ever put into your mouth",
         image: "Illustration1",
         price: 9.99,
         type: .drink(.cold)),
    
    Item(name: "Drink 3",
         description: "Just the greatest think you will ever put into your mouth",
         image: "Illustration1",
         price: 9.99,
         type: .drink(.cold))
]

var coldDrinks: [Item] {
    get {
        Items.filter {
            if case .drink(.cold) = $0.type { return true }
            return false
        }
    }
}

var hotDrinks: [Item] {
    get {
        Items.filter {
            if case .drink(.hot) = $0.type { return true }
            return false
        }
    }
}

var foodDrinks: [Item] {
    get {
        Items.filter {
            if case .food = $0.type { return true }
            return false
        }
    }
}
