//
//  MenuItemView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/26/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuItemView: View {
    
    var item: MenuItem!
    @Binding var source: CGRect
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(alignment: .leading) {
                    Text(self.item.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(30)
                        .lineLimit(4)
                    Spacer()
                    Image(self.item.image)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 246, height: 150)
                }
                .background(Color("background3"))
                .cornerRadius(30)
                .shadow(color: Color("backgroundShadow3"), radius: 10, x: 0, y: 5)
                .animation(.default)
                .onTapGesture {
                    self.source = .init(
                        x: geometry.frame(in: .global).origin.x,
                        y: geometry.frame(in: .global).origin.y,
                        width: geometry.frame(in: .global).size.width,
                        height: geometry.frame(in: .global).size.height
                    )
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image(systemName: "cart.badge.plus")
                            .frame(width: 44, height: 44)
                            .foregroundColor(Color.white)
                            .background(Color.yellow)
                            .cornerRadius(22)
                            .shadow(radius: 11)
                            .padding()
                    }
                }
            }
        }
        .frame(width: 250, height: 250)
        .padding(.bottom, 32)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: menuItems[0], source: .constant(.zero))
    }
}
