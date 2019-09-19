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
                        .padding(.trailing, 50)
                    Spacer()
                    Image(self.item.image)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 246, height: 150)
                        .padding(.bottom, 30)
                }
                .background(Color("background3"))
                .cornerRadius(30)
                .shadow(color: Color("backgroundShadow3"), radius: 10, x: 0, y: 5)
                .animation(.default)
                .onTapGesture {
                    print("\(geometry.frame(in: .global).origin.x), \(geometry.frame(in: .global).origin.y), \(geometry.frame(in: .global).size.width), \(geometry.frame(in: .global).size.height)")
            }
                
                Image(systemName: "cart.badge.plus")
                    .frame(width: 44, height: 44)
                    .foregroundColor(Color.white)
                    .background(Color.yellow)
                    .cornerRadius(22)
                    .shadow(radius: 11)
                .offset(x: 90, y: 60)
            }
        }
        .frame(width: 250, height: 250)
        .padding(.top, 20)
        .padding(.bottom, 50)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: menuItems[0])
    }
}
