//
//  MenuList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuList: View {
    
    let menuItems: [MenuItem]!
    @Binding var source: CGRect
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(menuItems) { item in
                    Button(action: {
                        cartItems.append(CartItem(menuItem: item, quantity: 1))
                    }) {
                        MenuItemView(item: item, source: self.$source)
                            .offset(x: 30)
                    }
                }
            }
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(menuItems: coldDrinks, source: .constant(.zero))
    }
}
