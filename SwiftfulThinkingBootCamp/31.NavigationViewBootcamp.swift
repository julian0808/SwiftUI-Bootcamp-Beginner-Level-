//
//  31.NavigationViewBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 2/02/24.
//

import SwiftUI

struct _1_NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                
                NavigationLink("Hello, world!",
                               destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                ,
                trailing:
                    NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                        
                    })
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .navigationTitle("Green Screen!")
            //.navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    _1_NavigationViewBootcamp()
}
