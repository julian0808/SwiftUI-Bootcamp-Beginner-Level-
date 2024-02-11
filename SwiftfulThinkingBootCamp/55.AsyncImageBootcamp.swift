//
//  55.AsyncImageBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 8/02/24.
//

import SwiftUI

struct _5_AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)

            }
        }
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        //                .cornerRadius(20)
        //        }, placeholder: {
        //           ProgressView()
        //        })
        
    }
}

#Preview {
    _5_AsyncImageBootcamp()
}
