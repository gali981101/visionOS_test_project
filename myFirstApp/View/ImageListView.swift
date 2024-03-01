//
//  ContentView.swift
//  myFirstApp
//
//  Created by Terry Jason on 2024/2/22.
//

import SwiftUI

struct ImageListView: View {
    
    private var viewModel = ImageListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.images, id: \.id) { image in
                HStack {
                    NavigationLink(destination: ImageDetailView(image: image)) {
                        ImageCell(image: image)
                    }
                }
            }
            .navigationTitle("Anime")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ImageListView()
}

struct ImageCell: View {
    var image: MyImage
    
    var body: some View {
        Image(image.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 150)
            .padding(.horizontal)
        
        VStack(alignment: .leading, spacing: 2, content: {
            Text(image.title)
                .font(.largeTitle)
                .padding(.vertical)
            
            Text(image.description)
                .font(.title2)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        })
    }
}




