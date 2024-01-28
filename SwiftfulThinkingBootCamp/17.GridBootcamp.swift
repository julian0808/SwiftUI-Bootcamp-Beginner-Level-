//
//  17.GridBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Jmr on 26/01/24.
//

import SwiftUI

struct _7_GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
   
        
    ]
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(Color.orange)
                .frame(height:400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: 
                                Text("Seccion 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Seccion 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                    
                    
            })
        }
     
    }
}

#Preview {
    _7_GridBootcamp()
}
