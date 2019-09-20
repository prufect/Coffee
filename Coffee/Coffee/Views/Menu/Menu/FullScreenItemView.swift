//
//  FullScreenItemView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 9/18/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct FullScreenItemView: View {
    
    var item: MenuItem!
    @Binding var source: CGRect
    @State var showFullscreen = false
    
    private func getPos() -> CGPoint {
        
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        
        let x = showFullscreen ? 0 + width/2 : source.origin.x + source.size.width/2
        let y = showFullscreen ? 0 + height/2 : source.origin.y + source.size.height/2
        return .init(x: x, y: y)
    }
    
    private func getWidth() -> CGFloat {
        return showFullscreen ? UIScreen.main.bounds.width : source.size.width
    }
    
    private func getHeight() -> CGFloat {
        return showFullscreen ? UIScreen.main.bounds.height : source.size.height
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(self.item.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(30)
                    .lineLimit(1)
                
                Image(self.item.image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 246, height: 150)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color.white)
                        .background(Color.yellow)
                        .cornerRadius(22)
                        .shadow(radius: 11)
                        .onTapGesture {
                            self.source = .zero
                    }
                }
            }
            .padding()
        }
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: getWidth(), height: getHeight())
        .position(getPos())
        .animation(.default)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.showFullscreen = true
            }
        }
    }
}

struct FullScreenItemView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenItemView(item: menuItems.first, source: .constant(.init(x: 0, y: 0, width: 250, height: 250)))
    }
}
