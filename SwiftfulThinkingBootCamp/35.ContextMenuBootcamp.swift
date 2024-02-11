//
//  35.ContextMenuBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 4/02/24.
//

import SwiftUI

struct _5_ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
            
        
        })
    }
}

#Preview {
    _5_ContextMenuBootcamp()
}
