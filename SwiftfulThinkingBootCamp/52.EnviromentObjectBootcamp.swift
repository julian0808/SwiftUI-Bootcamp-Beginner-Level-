//
//  52.EnviromentObjectBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

// ObserveObject
// StateObject
// EnviromentObject

class EnvitomentViewModel: ObservableObject {
    
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
        
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone","iPad","iMac","Apple Watch"])
    }
}

struct _2_EnviromentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvitomentViewModel = EnvitomentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item  in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                   
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // backgound
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                })
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvitomentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.gray]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
        // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
    
}

#Preview {
    _2_EnviromentObjectBootcamp()
    //DetailView(selectedItem: "iPhone")
    //FinalView()
}
