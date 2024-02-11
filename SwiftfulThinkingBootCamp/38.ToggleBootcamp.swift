//
//  38.ToggleBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 5/02/24.
//

import SwiftUI

struct _8_ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    _8_ToggleBootcamp()
}
