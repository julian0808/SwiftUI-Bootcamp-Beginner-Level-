//
//  49.TabGestoreBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 7/02/24.
//

import SwiftUI

struct _9_TabGestoreBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green: Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                    .onTapGesture {
//                        isSelected.toggle()
//                }
            
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    _9_TabGestoreBootcamp()
}
