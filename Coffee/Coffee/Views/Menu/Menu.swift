//
//  Home.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Menu: View {

    @State private var showMenu = false
    @State private var showProfile = false
    
    var body: some View {
        ZStack {
                BGCardView()
            
            VStack {
                MenuHeader(showMenu: $showMenu, showProfile: $showProfile)
                Spacer()
            }
            
            Rewards()
                .cornerRadius(30.0)
                .shadow(radius: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: 0, y: showProfile ? 80 : UIScreen.main.bounds.height)
            
            SideMenu(showMenu: $showMenu)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

struct MenuRow: View {
    
    var item = MenuItem(image: "creditcard", text: "hello world")
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Text(item.text)
                .font(.headline)
            Spacer()
        }
    }
}

struct MenuItem: Identifiable {
    var id = UUID()
    var image: String
    var text: String
}

struct CircleButton: View {
    
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

struct MenuButton: View {
    
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

struct MenuRight: View {
    
    @Binding var show: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                Button(action: {
                    self.show.toggle()
                }) {
                    CircleButton(image: "person.crop.circle")
                }
                
                Button(action: {
                    self.show.toggle()
                }) {
                    CircleButton(image: "gear")
                }
            }
            
            Spacer()
        }
    }
}
