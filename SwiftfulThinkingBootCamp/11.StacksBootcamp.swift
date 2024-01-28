//
//  11.StacksBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 24/01/24.
//

import SwiftUI

struct _1_StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
       // ZStack(alignment: .topLeading, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//              
//        })
            
        ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 500, alignment: .center)
                
            VStack (alignment: .leading, spacing: 30){
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                    
                HStack (alignment: .bottom, spacing: 30) {
                        Rectangle()
                            .fill(Color.purple)
                        .frame(width: 50, height: 50)
                        
                        Rectangle()
                            .fill(Color.pink)
                            .frame(width: 75, height: 75)
                        
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 25, height: 25)
                    }
                    .background(Color.white)
                
                }
                
                .background(Color.black)
            }
        
    }
}

#Preview {
    _1_StacksBootcamp()
}
