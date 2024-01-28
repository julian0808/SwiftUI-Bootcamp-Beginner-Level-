//
//  8.ImagesBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 22/01/24.
//

import SwiftUI

struct __ImagesBootcamp: View {
    var body: some View {
        Image("google")
            //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
                //Circle()
            //)
    }
}

#Preview {
    __ImagesBootcamp()
}
