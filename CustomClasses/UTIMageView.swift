//
//  UTIMageView.swift
//  Utalii
//
//  Created by Vivek kumar on 7/12/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit

class UTIMageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.masksToBounds = true
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
            
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
            
        }
    }
}

extension ABImageView {
    
    func setImage(_ url: String) {
        guard url.isEmpty == false else {
            return
        }
        
        if let uRL = URL(string: url) {
            self.sd_setImage(with: uRL, placeholderImage: Images.PlaceHolder.logo, options: SDWebImageOptions.cacheMemoryOnly) { (image, error, cacheType, url) in
                
                if let error = error {
                    print("Image Loading error : \(error)")
                }
            }
            
        }
    }
}


/// This class prefetches images in advance for the cells in Tableview/CollectionView
///
class ImageDownloader {
    static let shared = ImageDownloader()
    
    func downloadImage(_ url: String) {
        if let uRL = URL(string: url) {
            
            SDWebImagePrefetcher.shared().prefetchURLs([uRL])
            
        }
    }
    
}
