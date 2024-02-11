//
//  66.SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 10/02/24.
//

import SwiftUI

struct _6_SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height:300)
            }
            .navigationTitle("Safe Area Insets")
            //            .overlay(
            //                Text("Hi")
            //                    .frame(maxWidth: .infinity)
            //                .background(Color.yellow)
            //                ,alignment: .bottom
            //            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow)
//                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                    .padding()
            }
        }
    }
}

#Preview {
    _6_SafeAreaInsetBootcamp()
}
