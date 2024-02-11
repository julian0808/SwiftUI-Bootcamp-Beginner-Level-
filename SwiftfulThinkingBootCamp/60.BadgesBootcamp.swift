//
//  60.BadgesBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 9/02/24.
//

import SwiftUI

// List
// TabView

struct _0_BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//            }
//        }
    }
}

#Preview {
    _0_BadgesBootcamp()
}
