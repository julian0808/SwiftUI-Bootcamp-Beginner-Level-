//
//  23.BindingBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 30/01/24.
//

import SwiftUI

struct _3_BindingBootcamp: View {
    
        
        @State var backgroundColor: Color = Color.green
        @State var title: String = "Title"
        
        
        var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
        }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE !!!"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    _3_BindingBootcamp()
}
