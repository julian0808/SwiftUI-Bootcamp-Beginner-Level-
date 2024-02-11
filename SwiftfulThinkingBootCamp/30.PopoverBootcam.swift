//
//  30.PopoverBootcam.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 1/02/24.
//

// Sheets
// animations
// transitions

import SwiftUI

struct _0_PopoverBootcam: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen ,content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen( showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0: UIScreen.main.bounds.height)
                .animation(.spring())
          
        }
    }
}


struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                        .padding(20)
            })
        }
    }
}

#Preview {
    _0_PopoverBootcam()
    //NewScreen()
}
