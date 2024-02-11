//
//  18.SafeAreaBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 27/01/24.
//

import SwiftUI

struct _8_SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
                
            }
        }
        .background(Color.blue)
        .background(
            Color.red
                //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // old
                .ignoresSafeArea()
        )
        
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        //.edgesIgnoringSafeArea(.all)
//        }
    }
}

#Preview {
    _8_SafeAreaBootcamp()
}
