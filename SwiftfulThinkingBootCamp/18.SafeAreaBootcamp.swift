//
//  18.SafeAreaBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 27/01/24.
//

import SwiftUI

struct _8_SafeAreaBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    _8_SafeAreaBootcamp()
}
