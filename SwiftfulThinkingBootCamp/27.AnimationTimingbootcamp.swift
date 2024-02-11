//
//  27.AnimationTimingbootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 31/01/24.
//

import SwiftUI

struct _7_AnimationTimingbootcamp: View {
    @State var isAnimating : Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
//                .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50 , height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50 , height: 100)
//                .animation(Animation.easeOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50 , height: 100)
//                .animation(Animation.easeInOut(duration: timing))
            
            
        }
    }
}

#Preview {
    _7_AnimationTimingbootcamp()
}
