//
//  31.AlertBootcamp1.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 3/02/24.
//

import SwiftUI

struct _1_AlertBootcamp1: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
                    //alertTitle = "ERROR UPLOADING VIDEO"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                } 
                Button("BUTTON 2") {
                    alertType = .success
                    //alertTitle = "Successfully uploaded video 😀"
                    //alertMessage = "Your vide is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a sucess!"), message: nil,
                dismissButton: .default(Text("OK"), action: { 
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        
        }
//        return Alert(title: Text(alertTitle),
//              message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                bakgroundColor = .red
//            }),
//            secondaryButton: .cancel())
        //Alert(title: Text("There was an error!"))
        
    }
}

#Preview {
    _1_AlertBootcamp1()
}
