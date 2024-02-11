//
//  70.NativePopoverBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 10/02/24.
//

import SwiftUI

struct _0_NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Average 😀",
        "Very bad 😡"
    ]
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Button("Provide feeback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOptions,id: \.self) { option in
                                Button(option) {
                                    
                                }
                                
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        })
                    }
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
                })
                
                
            }
        }
    }
}

#Preview {
    _0_NativePopoverBootcamp()
}
