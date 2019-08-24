//
//  CardDetail.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct CardDetail: View {
    var body: some View {
        ZStack {
            VStack {
                Image("cake")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color("shadow"), radius: 30, x: 0, y: 0)
            }
            
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "cart.badge.plus")
                        .padding(.trailing, 16)
                        .font(.title)
                    
                    Text("Add to cart")
                    .font(.title)
                }
                .foregroundColor(.white)
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .background(Color("brown"))
                .cornerRadius(20)
                .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 20)
            }
            .padding(.bottom, 80)

        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(minHeight: 0, maxHeight: .infinity)
        .background(Color("background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct CardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CardDetail()
    }
}
