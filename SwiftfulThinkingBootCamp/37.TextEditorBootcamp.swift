//
//  37.TextEditorBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 5/02/24.
//

import SwiftUI

struct _7_TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.black)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("Textditor Bootcamp!")
        }
    }
}

#Preview {
    _7_TextEditorBootcamp()
}
