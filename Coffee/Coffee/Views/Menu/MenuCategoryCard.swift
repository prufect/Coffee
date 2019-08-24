//
//  MenuCategoryCard.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuCategoryCard: View {
    
    var category: MenuCategory!
    
    @State private var show: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(30)
                .lineLimit(4)
                .padding(.trailing, 50)
            Spacer()
            Image(category.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 150)
                .padding(.bottom, 30)
        }
        .frame(width: show ? 500 : 246, height: show ? 800 : 360)
        .background(category.color)
        .cornerRadius(30)
        .shadow(color: category.shadowColor, radius: 20, x: 0, y: 10)
        .padding(.bottom, 50)
        .animation(.default)
        .onTapGesture {
            self.show.toggle()
        }
    }
}

struct MenuCategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCategoryCard()
    }
}
