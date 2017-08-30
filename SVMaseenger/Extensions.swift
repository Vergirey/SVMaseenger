//
//  Extensions.swift
//  SVMaseenger
//
//  Created by Julia Kolbina on 26.07.17.
//  Copyright © 2017 com.SVMaseenger. All rights reserved.
//

import UIKit

let imageCashe = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func loadImageUsingCasheWithUrlString(urlString: String) {
        
        self.image = nil
        
        // check cashe for image first
        if let cashedImage = imageCashe.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cashedImage
            return
        }
        
        //otherwise fire off a new download
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            // download hit an error so lets out
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: {
                if let downloadedImage = UIImage(data: data!) {
                    imageCashe.setObject(downloadedImage, forKey: urlString as AnyObject)
                    
                    self.image = downloadedImage
                }
            })
        }).resume()
    }
}
