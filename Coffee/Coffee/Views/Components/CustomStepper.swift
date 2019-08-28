//
//  CustomStepper.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

enum CustomStepperSize {
    case small
    case medium
    case large
}

struct CustomStepper: View {
    
    @Binding var value: Int
    var size: CustomStepperSize = .medium
    
    private func increment() {
        value += 1
    }
    
    private func decrement() {
        value = value > 0 ? value - 1 : value
    }
    
    var body: some View {
        HStack {
            
            Button(action: { self.decrement() }) {
                Image(systemName: "minus")
                    .renderingMode(.original)
                    .padding(.leading, 10)
                    .font(Font.footnote.weight(.bold))
            }
            
            Text("\(value)")
                .font(Font.footnote.weight(.heavy))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .frame(width: 16)
            
            Button(action: { self.increment() }) {
                Image(systemName: "plus")
                .renderingMode(.original)
                .foregroundColor(Color.primary)
                    .padding(.trailing, 10)
                .font(Font.footnote.weight(.bold))
            }
            
        }
        .padding(.vertical, 4)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.primary.opacity(0.1), lineWidth: 2)
        )
    }
}

struct CustomStepper_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomStepper(value: .constant(1))
                .environment(\.colorScheme, .light)
        }
    }
}
