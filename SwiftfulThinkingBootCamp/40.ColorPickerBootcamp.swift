//
//  40.ColorPickerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 5/02/24.
//

import SwiftUI

struct _0_ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
            
        }
    }
}


#Preview {
    _0_ColorPickerBootcamp()
}
