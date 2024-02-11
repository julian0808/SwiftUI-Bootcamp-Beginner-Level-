//
//  29.SheetsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 1/02/24.
//

import SwiftUI

struct _9_SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                // DOT NOT ADD CONDITIONAL LOGIC 
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View { 

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
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
    _9_SheetsBootcamp()
    //SecondScreen()
}
