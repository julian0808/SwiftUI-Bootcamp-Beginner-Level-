//
//  26.AnimationBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 31/01/24.
//

import SwiftUI

struct _6_AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                
                    isAnimated.toggle()
                }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50:25 )
            // note the order of the modifiers matters
            
                .fill(isAnimated ? Color.red: Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true))
            
            Spacer()
        }
    }
}

#Preview {
    _6_AnimationBootcamp()
}
