//
//  13.SpacerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 24/01/24.
//

import SwiftUI

struct _3_SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            
    //            Rectangle()
    //                .frame(width: 50, height: 50)
    //            
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            
    //            Rectangle()
    //                .fill(Color.red)
    //                .frame(width: 50, height: 50)
    //            
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            
    //            Rectangle()
    //                .fill(Color.green)
    //                .frame(width: 50, height: 50)
    //            
    //            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
    //                .frame(height: 10)
    //                .background(Color.orange)
            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
        //.background(Color.blue)
            
            Spacer()
                
            
            Rectangle()
                .frame( height: 55)
        }
        //.background(Color.yellow)
    }
}

#Preview {
    _3_SpacerBootcamp()
}
