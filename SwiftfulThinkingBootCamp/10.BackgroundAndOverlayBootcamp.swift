//
//  10.BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 23/01/24.
//

import SwiftUI

struct _0_BackgroundAndOverlayBootcamp: View {
    var body: some View {
       Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .shadow(color: .purple, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                             Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                            )
                            .shadow(color: .purple, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                       , alignment: .bottomTrailing)
            )
        
    }
}

#Preview {
    _0_BackgroundAndOverlayBootcamp()
}
