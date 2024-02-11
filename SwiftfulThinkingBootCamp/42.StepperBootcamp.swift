//
//  42.StepperBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 6/02/24.
//

import SwiftUI

struct _2_StepperBootcamp: View {
    
    @State var steppervValue: Int = 10
    @State var widthincrement: CGFloat = 0
    
    var body: some View {
        
    
        
        VStack {
            Stepper("Stepper: \(steppervValue)", value: $steppervValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthincrement, height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrement
                 incrementWidth(amount: -10)
            }
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthincrement += amount
        }
        
    }
}

#Preview {
    _2_StepperBootcamp()
}
