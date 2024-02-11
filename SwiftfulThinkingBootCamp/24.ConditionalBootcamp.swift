//
//  24.ConditionalBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 31/01/24.
//

import SwiftUI

struct _4_ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description) ") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
            
            
        }
    }
}

#Preview {
    _4_ConditionalBootcamp()
}
