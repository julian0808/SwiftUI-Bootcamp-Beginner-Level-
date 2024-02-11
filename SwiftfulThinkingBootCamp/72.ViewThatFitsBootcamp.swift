//
//  72.ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 11/02/24.
//

import SwiftUI

struct _2_ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is a some text that I would like to display to the user!")
//                Text("This is a some text that I would like to display!")
//                Text("This is a some text!")
            }
            
            
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    _2_ViewThatFitsBootcamp()
}
