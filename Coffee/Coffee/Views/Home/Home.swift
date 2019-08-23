//
//  Home.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Home: View {

    @State var showMenu = false
    @State var showProfile = false
    
    var body: some View {
        ZStack {
            HomeList()
                .blur(radius: showMenu ? 20 : 0)
                .scaleEffect(showProfile ? 0.9 : 1)
                .animation(.default)
            
            ProfileView()
                .cornerRadius(30.0)
                .shadow(radius: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: 0, y: showProfile ? 80 : UIScreen.main.bounds.height)
            
            MenuButton(show: $showMenu)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -30, y: showProfile ? 0 : 80)
            
            MenuRight(show: $showProfile)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -16, y: showProfile ? 0 : 88)
            
            MenuView(showMenu: $showMenu)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
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

struct MenuView: View {
    
    @Binding var showMenu: Bool
    
    var menuItems = [
        MenuItem(image: "person.crop.circle", text: "My Account"),
        MenuItem(image: "creditcard", text: "Billing"),
        MenuItem(image: "clock", text: "Recent"),
        MenuItem(image: "arrow.uturn.down", text: "Sign out")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(menuItems) { MenuRow(item: $0) }
            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 30)
        .rotation3DEffect(Angle(degrees: showMenu ? 0 : 45), axis: (x: 0, y: 10, z: 0))
        .animation(.spring())
        .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.showMenu.toggle()
        }
    }
}

struct CircleButton: View {
    
    var image = "bell"
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.black)
        }
        .frame(width: 44, height: 44)
        .background(Color.white)
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
                        .foregroundColor(.black)
                }
                .padding(.trailing, 20)
                .frame(width: 90, height: 60)
                .background(Color.white)
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
                    CircleButton(image: "bell")
                }
            }
            
            Spacer()
        }
    }
}
