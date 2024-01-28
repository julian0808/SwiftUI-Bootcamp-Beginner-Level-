//
//  16.ScrollViewBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 26/01/24.
//

import SwiftUI

struct _6_ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300 ,height: 300)
//                }
//                
//                
//            }
//        })
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false , content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    })
                    
                }
            }
        }
        
        
    }
}

#Preview {
    _6_ScrollViewBootcamp()
}
