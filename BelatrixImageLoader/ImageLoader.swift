//
//  ImageLoader.swift
//  BelatrixImageLoader
//
//  Created by Jorge on 5/11/17.
//  Copyright © 2017 Jorge. All rights reserved.
//

import UIKit

class ImageLoader {
    let imageView: UIImageView
    let url: String
    
    static func with(imageView: UIImageView) -> ImageLoaderBuilder {
        return ImageLoaderBuilder(imageView: imageView)
    }
    
    init(imageLoader: ImageLoaderBuilder) {
        self.imageView = imageLoader.imageView
        self.url = imageLoader.url
        downloadImage()
    }
    
    class ImageLoaderBuilder {
        let imageView: UIImageView
        var url: String
        
        init(imageView: UIImageView) {
            self.imageView = imageView
            self.url = ""
        }
        
        func load(url: String) {
            self.url = url
            _ = ImageLoader(imageLoader: self)
        }
        
    }
    
    func downloadImage() {
        let url = URL(string: self.url)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.imageView.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
    }
}
