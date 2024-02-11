//
//  21.ExtractedFuctionsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 29/01/24.
//

import SwiftUI

struct _1_ExtractedFuctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black
                        .cornerRadius(10)
)
            })
        }
    }
    
    //func
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    _1_ExtractedFuctionsBootcamp()
}
