//
//  ContentView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @State var show = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            
            BlurView(style: .extraLight)
            
            TitleView()
                .padding(.top)
                .blur(radius: show ? 20 : 0)
                .animation(.easeInOut)
            
            CardBottomView()
                .blur(radius: show ? 20 : 0)
                .animation(.easeInOut)

            CardView()
                .background(show ? Color.red : Color("background9"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.85)
                .offset(x: viewState.width, y: viewState.height)
                .animation(.easeInOut(duration: 0.7))
                .rotationEffect(Angle(degrees: show ? 15 : 0))
                .rotation3DEffect(Angle(degrees: show ? 40 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
            
            CardView()
                .background(show ? Color.red : Color("background8"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .offset(x: 0, y: show ? -175 : -20)
                .scaleEffect(0.9)
                .offset(x: viewState.width, y: viewState.height)
                .animation(.easeInOut(duration: 0.5))
                .rotationEffect(Angle(degrees: show ? 10 : 0))
                .rotation3DEffect(Angle(degrees: show ? 30: 0), axis: (x: 10.0, y: 10.0, z: 10.0))
            
            RewardsCardView()
                .offset(x: viewState.width, y: viewState.height)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .rotation3DEffect(Angle(degrees: show ? 20 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .animation(.spring(response: 1.0, dampingFraction: 0.5, blendDuration: 0.35))
                .onTapGesture {
                    self.show.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.viewState = value.translation
                            self.show = true
                    }
                    .onEnded { value in
                        self.viewState = .zero
                        self.show = false
                    }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct RewardsCardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Free Drink")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Rewards Card")
                        .foregroundColor(.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            .padding(.horizontal)
            Spacer()
            
            Image("Background")
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 20)
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            Text("Card Back")
        }
        .frame(width: 340, height: 220)
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Rewards")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            .padding(.leading)
            Image("Illustration5")
            Spacer()
        }
    }
}

struct CardBottomView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Rectangle()
                .frame(width: 60.0, height: 6)
                .cornerRadius(3.0)
                .opacity(0.1)
            
            
            Text("These are all your rewards, be sure to use them at Coffee Cultures to redeem them. Yay :)")
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30)
        .offset(y: 600)
    }
}
