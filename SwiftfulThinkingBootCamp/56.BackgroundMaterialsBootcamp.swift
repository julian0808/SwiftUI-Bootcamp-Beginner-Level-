//
//  56.BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

struct _6_BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("therock")
        )
    }
}

#Preview {
    _6_BackgroundMaterialsBootcamp()
}
