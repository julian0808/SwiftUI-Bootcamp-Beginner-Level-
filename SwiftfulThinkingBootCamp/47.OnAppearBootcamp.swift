//
//  47.OnAppearBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 7/02/24.
//

import SwiftUI

struct _7_OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
                
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    _7_OnAppearBootcamp()
}
