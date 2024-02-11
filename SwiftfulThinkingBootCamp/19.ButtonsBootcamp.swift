//
//  19.ButtonsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 29/01/24.
//

import SwiftUI

struct _9_ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Pressed me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button # was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow( radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.red)
                            
                    )
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
        }
    }
}

#Preview {
    _9_ButtonsBootcamp()
}
