//
//  14.InitializerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 24/01/24.
//

import SwiftUI

struct _4_InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    
    HStack {
        _4_InitializerBootcamp(count: 100, fruit: .apple)
        _4_InitializerBootcamp(count: 46, fruit: .orange)
    }
}
