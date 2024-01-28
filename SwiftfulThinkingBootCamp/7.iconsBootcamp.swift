//
//  7-iconsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 22/01/24.
//

import SwiftUI

struct __iconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.caption)
            //.font(.system(size: 200))
            //.foregroundColor(.green)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    __iconsBootcamp()
}
