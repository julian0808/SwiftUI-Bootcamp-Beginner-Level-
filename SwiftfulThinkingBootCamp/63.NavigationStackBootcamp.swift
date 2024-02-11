//
//  63.NavigationStackBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 9/02/24.
//

import SwiftUI

struct _3_NavigationStackBootcamp: View {
    
    let fruits = ["Apple","Orange","Banana"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView {
                    VStack(spacing: 40) {
                        
                        ForEach(fruits , id: \.self) { fruit in
                            NavigationLink(value: fruit) {
                                Text(fruit)
                            }
                        }
                        
                        ForEach(0..<10) { x in
                            NavigationLink(value: x) {
                                Text("Click me \(x)")                            }
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)" )
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
    
}

#Preview {
    _3_NavigationStackBootcamp()
}
