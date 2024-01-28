//
//  5-Colorsbootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 21/01/24.
//

import SwiftUI

struct __Colorsbootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color.primary
                //Color(Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/))
               // Color(#colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    __Colorsbootcamp()
}
