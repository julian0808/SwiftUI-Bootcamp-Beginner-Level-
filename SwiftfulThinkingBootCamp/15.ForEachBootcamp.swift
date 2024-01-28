//
//  15.ForEachBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 24/01/24.
//

import SwiftUI

struct _5_ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
            //}
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    _5_ForEachBootcamp()
}
