//
//  53.AppStorageBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

struct _3_AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    _3_AppStorageBootcamp()
}
