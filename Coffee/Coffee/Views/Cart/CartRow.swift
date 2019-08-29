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
        HStack(spacing: 16) {
            Image(item.menuItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: .center)
                .background(Color("background3"))
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(item.menuItem.name)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .lineLimit(1)
                    .fixedSize()
                
                CustomStepper(value: $item.quantity)
            }
            
            Spacer()
                .padding(-16)
            
            Text(totalPrice())
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.black.opacity(0.2))
                .multilineTextAlignment(.trailing)
                .frame(width: 72)
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(item: cartItems[0])
    }
}
