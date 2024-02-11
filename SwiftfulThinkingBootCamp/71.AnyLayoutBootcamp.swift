//
//  71.AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 11/02/24.
//

import SwiftUI

struct _1_AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) :
            AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Betha")
                Text("Gamma")
            }
            
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Betha")
//                    Text("Gamma")
//                }
//            }else {
//                HStack {
//                    Text("Alpha")
//                    Text("Betha")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

#Preview {
    _1_AnyLayoutBootcamp()
}
