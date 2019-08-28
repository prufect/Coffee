//
//  SideMenuButton.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct SideMenuButton: View {
    
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Button(action: {
                self.show.toggle()
            }) {
                HStack {
                    Spacer()
                    Image(systemName: "list.dash")
                        .foregroundColor(.primary)
                }
                .padding(.trailing, 20)
                .frame(width: 90, height: 60)
                .background(BlurView(style: .systemMaterial))
                .cornerRadius(30)
                .shadow(color: Color("buttonShadow"), radius: 10, y: 10)
            }
            Spacer()
        }
    }
}

struct SideMenuButton_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuButton(show: .constant(false))
    }
}
