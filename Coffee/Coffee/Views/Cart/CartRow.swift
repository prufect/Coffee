//
//  CartRow.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct CartRow: View {
    
    @ObservedObject var item: CartItem
    
    private func totalPrice() -> String {
        let total = Double(item.quantity) * item.menuItem.price
        return total.money()
    }
    
    var body: some View {
        HStack(spacing: 24) {
            Image(item.menuItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: .center)
                .background(Color("background3"))
                .cornerRadius(20)
            
            Text(item.menuItem.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Spacer()
            
            CustomStepper(value: $item.quantity)
            
            Text(totalPrice())
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.black.opacity(0.3))
            
            
        }
        .padding(.horizontal, 32)
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(item: cartItems[0])
    }
}
