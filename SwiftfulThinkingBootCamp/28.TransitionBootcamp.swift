//
//  28.TransitionBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 31/01/24.
//

import SwiftUI

struct _8_TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    _8_TransitionBootcamp()
}
