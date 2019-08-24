//
//  ContentView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Rewards: View {
    @State var show = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            BlurView(style: .systemMaterial)
            
            RewardsTitleView()
                .padding(.top)
                .blur(radius: show ? 20 : 0)
                .animation(.easeInOut)
            
            Image("qr")
                .resizable()
                .frame(width: 250, height: 250)
                .blur(radius: show ? 20 : 0)
                .animation(.easeInOut)
                .offset(y: -30)

            RewardsCardView()
                .background(show ? Color.purple : Color("background9"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.85)
                .offset(x: viewState.width, y: viewState.height)
                .animation(.easeInOut(duration: 0.5))
                .rotationEffect(Angle(degrees: show ? 6 : 0))
                .rotation3DEffect(Angle(degrees: show ? 15 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .offset(y: 250)
            
            RewardsCardView()
                .background(show ? Color.blue : Color("background8"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .offset(x: 0, y: show ? -175 : -20)
                .scaleEffect(0.9)
                .offset(x: viewState.width, y: viewState.height)
                .animation(.easeInOut(duration: 0.3))
                .rotationEffect(Angle(degrees: show ? 4 : 0))
                .rotation3DEffect(Angle(degrees: show ? 10: 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .offset(y: 250)
            
            RewardsCardView()
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 20)
                .offset(y: 250)
                .offset(x: viewState.width, y: viewState.height)
                .rotationEffect(Angle(degrees: show ? 2 : 0))
                .rotation3DEffect(Angle(degrees: show ? 5 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .animation(.spring(response: 0.75, dampingFraction: 0.5, blendDuration: 0.35))
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

struct Rewards_Previews: PreviewProvider {
    static var previews: some View {
        Rewards()
    }
}
