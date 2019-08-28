//
//  MenuOptions.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuOptions: View {
    
    @Binding var showRewards: Bool
    @Binding var showCart: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                Button(action: {
                    self.showRewards.toggle()
                }) {
                    MenuOptionButton(image: "gift.fill")
                }
                
                Button(action: {
                    self.showCart.toggle()
                }) {
                    MenuOptionButton(image: "cart.fill")
                }
            }
            
            Spacer()
        }
    }
}

struct MenuOptions_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptions(showRewards: .constant(false), showCart: .constant(false))
    }
}
