//
//  6-GradientsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 22/01/24.
//

import SwiftUI

struct __GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            //.fill(Color.red)
            //.fill(LinearGradient(
                //colors: [Color.blue, Color.purple],
                                 //startPoint: .leading,
                                 //endPoint: .bottom))
            //.fill(
                //RadialGradient(
                    //gradient: Gradient(colors: [Color.blue, Color.purple]),
                    //center: .leading,
                    //startRadius: 5,
                    //endRadius: 400))
            .fill(
                AngularGradient.init(
                    gradient:
                    /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    __GradientsBootcamp()
}
