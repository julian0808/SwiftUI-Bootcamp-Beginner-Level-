//
//  12.PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 24/01/24.
//

import SwiftUI

struct _2_PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                //.background(Color.yellow)
                //.padding()
                //.padding(.all, 10)
                //.padding(.leading, 20)
                //.background(Color.blue)
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                        x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        )
        .padding(.horizontal, 10)
            //.frame( maxWidth: .infinity, alignment: .leading)
            //.background(Color.red)
            //.padding(.leading, 20)
    }
}

#Preview {
    _2_PaddingAndSpacerBootcamp()
}
