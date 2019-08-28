//
//  MenuOptionButton.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuOptionButton: View {
    
    var image = "bell"
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.primary)
        }
        .frame(width: 44, height: 44)
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 10, y: 10)
    }
}
struct MenuOptionButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionButton()
    }
}
