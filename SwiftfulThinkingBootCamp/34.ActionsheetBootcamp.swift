//
//  34.ActionsheetBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 4/02/24.
//

//NOTE: at the end the end of the day ActionsSheets are similar to Alerts.

import SwiftUI

struct _4_ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionsSheetOptions = .isOtherPost
    
    enum ActionsSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button =  .default(Text("Share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delele this post
        } 
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("what would you like to do?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton ])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton , cancelButton])
        
        }
        
        
        //return  ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message"),
//            buttons: [button1 , button2, button3])
    }
}

#Preview {
    _4_ActionsheetBootcamp()
}
