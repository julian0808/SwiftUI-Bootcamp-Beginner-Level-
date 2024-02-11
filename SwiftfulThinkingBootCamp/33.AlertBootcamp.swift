//
//  31.AlertBootcamp1.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 3/02/24.
//

import SwiftUI

struct _1_AlertBootcamp1: View {
    
    @State var showAlert: Bool = false
    @State var bakgroundColor: Color = Color.yellow
    
    
    var body: some View {
        ZStack {
            bakgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("This is the title"),
            message: Text("Here we will describe the error."),
            primaryButton: .destructive(Text("Delete"), action: {
                bakgroundColor = .red
            }),
            secondaryButton: .cancel())
        //Alert(title: Text("There was an error!"))
        
    }
}

#Preview {
    _1_AlertBootcamp1()
}
