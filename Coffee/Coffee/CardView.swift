//
//  CardView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    private var defaultHeight: CGFloat = 240
    private var defaultWidth: CGFloat = 246
    private var fullScreenHeight: CGFloat = UIScreen.main.bounds.height
    private var fullScreenWidth: CGFloat = UIScreen.main.bounds.width
    
    @State private var fullscreen: Bool = true
    
    var body: some View {
        ZStack {
            
            if fullscreen {
                CardDetail()
                    .animation(.spring())
                    .onTapGesture { self.fullscreen.toggle() }
            }
            
            VStack {
                VStack {
                    HStack {
                        Text("Card 1")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .offset(y: fullscreen ? 80 : 0)
                            .padding(.leading, 32)
                            .padding(.bottom, 32)
                        
                        Spacer()
                    }
                    
                    if fullscreen {
                        Spacer()
                    }
                    
                    Image("Illustration1")
                        .scaleEffect(fullscreen ? 2.0 : 1.0)
                        .opacity(fullscreen ? 0.1 : 1.0)
                }
                .frame(
                    width: fullscreen ? fullScreenWidth : defaultWidth,
                    height: fullscreen ? 120 : defaultHeight)
                    .padding(.top, 30)
                .background(Color("brown"))
                .cornerRadius(20)
                .animation(.spring())
                .onTapGesture { self.fullscreen.toggle() }
                
                if fullscreen {
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
