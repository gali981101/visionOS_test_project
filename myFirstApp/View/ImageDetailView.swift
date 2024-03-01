//
//  ImageDetailView.swift
//  myFirstApp
//
//  Created by Terry Jason on 2024/2/28.
//

import SwiftUI

struct ImageDetailView: View {
    @State private var isImageExpand: Bool = false
    
    var image: MyImage
    
    var body: some View {
        VStack(spacing: 10, content: {
            
            if isImageExpand {
                expandedImageView
            } else {
                collapseImageView
            }
            
            Text(image.title)
                .font(.title)
                .padding(.vertical)
            
            HStack(spacing: 40, content: {
                Label("\(image.watchCount)", systemImage: "eye.fill")
                Text(image.uploadDate)
            })
            .font(.title2)
            .foregroundStyle(.secondary)
            
            Text(image.description)
                .frame(width: 560)
                .font(.title3)
                .padding()
            
            if let url = image.url {
                Link("點擊觀看預告", destination: url)
                    .font(.title2)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
            }
        })
    }
    
    var collapseImageView: some View {
        imgView
            .scaleEffect(1)
    }
    
    var expandedImageView: some View {
        imgView
            .scaleEffect(3)
            .frame(height: 2000)
    }
    
    var imgView: some View {
        Image(image.imageName2)
            .resizable()
            .scaledToFit()
            .frame(height: 350)
            .onTapGesture {
                withAnimation {
                    isImageExpand.toggle()
                }
            }
    }
}

#Preview(windowStyle: .automatic) {
    ImageDetailView(image: ImageList.images[0])
}
