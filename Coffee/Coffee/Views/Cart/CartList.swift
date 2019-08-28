//
//  CartList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct CartList: View {
    
    var items: [CartItem] = cartItems
    
    var body: some View {
        List(items) { item in
            CartRow(item: item)
        }
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList()
    }
}
