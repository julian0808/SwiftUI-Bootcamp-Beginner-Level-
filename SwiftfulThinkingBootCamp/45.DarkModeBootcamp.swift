//
//  45.DarkModeBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 7/02/24.
//

import SwiftUI

struct _5_DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    Group {
        _5_DarkModeBootcamp()
            .preferredColorScheme(.light)
        _5_DarkModeBootcamp()
            .preferredColorScheme(.dark)
    }
}
