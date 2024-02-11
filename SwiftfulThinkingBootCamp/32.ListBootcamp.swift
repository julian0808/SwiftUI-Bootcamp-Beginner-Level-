//
//  32.ListBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 2/02/24.
//

import SwiftUI

struct _2_ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple","orange","banana","peach"
    ]
    @State var veggies: [String] = [
        "tomato","potato","carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.background(Color.pink)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                  }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
             }
            //accentColor(.purple)
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
            
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")

    }
}

#Preview {
    _2_ListBootcamp()
}
