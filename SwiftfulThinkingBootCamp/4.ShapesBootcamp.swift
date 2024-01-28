//
//  4-ShapesBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 21/01/24.
//

import SwiftUI

struct __ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10.0)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.4, to: 1.0)
            //.stroke(Color.purple,lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    __ShapesBootcamp()
}
