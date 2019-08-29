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
        ZStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(30)
                    .lineLimit(4)
                    .padding(.trailing, 50)
                Spacer()
                Image(item.image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 246, height: 150)
                    .padding(.bottom, 30)
            }
            .frame(width: 250, height: 250)
            .background(Color("background3"))
            .cornerRadius(30)
            .shadow(color: Color("backgroundShadow3"), radius: 20, x: 0, y: 10)
            .padding(.bottom, 50)
            .animation(.default)
            
            Image(systemName: "cart.badge.plus")
                .frame(width: 44, height: 44)
                .foregroundColor(Color.white)
                .background(Color.yellow)
                .cornerRadius(22)
                .shadow(radius: 11)
            .offset(x: 90, y: 60)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: menuItems[0])
    }
}
