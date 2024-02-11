//
//  62.SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 9/02/24.
//

import SwiftUI

struct _2_SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                    
            TextField("Placeholder...", text: $text)
                        .submitLabel(.next)
                        .onSubmit {
                            print("Something to the console!")
                        }
                    
            TextField("Placeholder...", text: $text)
                        .submitLabel(.search)
                        .onSubmit {
                            print("Something to the console!")
                        }
                }
        }
    }
}

#Preview {
    _2_SubmitTextFieldBootcamp()
}
