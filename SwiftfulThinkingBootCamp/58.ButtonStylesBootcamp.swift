//
//  58.ButtonStyles.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

struct _8_ButtonStyles: View {
    var body: some View {
        VStack {
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
        }
        .padding()
    }
}

#Preview {
    _8_ButtonStyles()
}
