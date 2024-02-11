//
//  67.GroupBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 10/02/24.
//

import SwiftUI

struct _7_GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    _7_GroupBootcamp()
}
