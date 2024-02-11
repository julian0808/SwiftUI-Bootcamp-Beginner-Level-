//
//  59.ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

struct _9_ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple","orange","banana","peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/,
                    allowsFullSwipe: true) {
                        Button("Archive") {
                        
                        }
                        .tint(.green)
                        Button("Save") {
                        
                        } 
                        .tint(.blue)
                        Button("Junk") {
                        
                        }
                        .tint(.black)
                    }
                
                    .swipeActions(edge: .leading,
                    allowsFullSwipe: true) {
                        Button("Share") {
                        
                        }
                        .tint(.yellow)
                     
                    }
            }
            //.onDelete(perform: delete)
            
            
        
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
    
}

#Preview {
    _9_ListSwipeActionsBootcamp()
}
