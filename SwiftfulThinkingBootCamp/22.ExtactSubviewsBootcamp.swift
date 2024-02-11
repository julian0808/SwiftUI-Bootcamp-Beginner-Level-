//
//  22.ExtactSubviewsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 30/01/24.
//

import SwiftUI

struct _2_ExtactSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        
            
        }
    }
    
    var contentLayer: some View {
        
        HStack {
            
        MyItem(title: "Apples", count: 1, color: .red)
        MyItem(title: "Oranges", count: 10, color: .orange)
        MyItem(title: "Bananas", count: 34, color: .yellow)
            
        }
        
    }
    

    
   
}

#Preview {
    _2_ExtactSubviewsBootcamp()
}


struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
