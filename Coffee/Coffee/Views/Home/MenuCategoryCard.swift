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
        .background(category.color)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: category.shadowColor, radius: 20, x: 0, y: 10)
        .padding(.bottom, 50)
    }
}
