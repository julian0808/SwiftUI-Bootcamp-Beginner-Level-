//
//  65.ResizableSheetbBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 9/02/24.
//

import SwiftUI

struct _5_ResizableSheetbBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detends: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detends: $detends)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
//                .presentationDetents([.height(500)])
                .presentationDetents([.medium, .large], selection: $detends)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detends: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
        
            
            VStack(spacing: 20) {
                Button("20%") {
                    detends = .fraction(0.2)
                }
                
                Button("MEDIUM") {
                    detends = .medium
                } 
                Button("600 PX") {
                    detends = .height(600)
                }
                
                Button("LARGE") {
                    detends = .large
                }
            }
        }
    }
}

#Preview {
    _5_ResizableSheetbBootcamp()
}
