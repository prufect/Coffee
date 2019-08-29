//
//  Cart.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Cart: View {
    var body: some View {
        ZStack {
            BlurView(style: .systemMaterial)
            
            VStack {
                HStack {
                    Text("Your Cart")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                
                Rectangle()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 4)
                    .foregroundColor(Color.black.opacity(0.05))
                    .cornerRadius(22)
                    .padding(.horizontal, 32)
                
                CartList()
            }
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}
