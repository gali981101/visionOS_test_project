//
//  ImageListViewModel.swift
//  myFirstApp
//
//  Created by Terry Jason on 2024/2/29.
//

import Foundation
import Observation

@Observable final class ImageListViewModel {
    
    var images: [MyImage] = []
    
    init(images: [MyImage]) {
        self.images = images
    }
    
    init() {
        self.images = ImageList.images
    }
    
}
