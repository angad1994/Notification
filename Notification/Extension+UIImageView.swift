//
//  Extention+UIImageView.swift
//  Tourio
//
//  Created by Ankit Pachauri on 08/08/17.
//  Copyright © 2017 ANKIT PACHAURI. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    func setImage(with urlSting:String) {
        let url  = URL.init(string: urlSting)
        self.sd_setImage(with: url, placeholderImage: UIImage.init(named: ""))
    }
    
    static func getImage(with urlString:String,complitionHandler:@escaping(_ image:UIImage?)->Void) {
        let url  = URL.init(string: urlString)
        SDWebImageDownloader.shared().downloadImage(with: url, options: SDWebImageDownloaderOptions.scaleDownLargeImages, progress: { (first,second, url) in
            
        }) { (image, data, error, status) in
            if (error != nil) {
            complitionHandler(image)
            }
            else {
                complitionHandler(nil)
            }
        }
    }
    
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit,finished:@escaping (_ urlImage:UIImage)-> Void,failed:@escaping (_ error:Error?)->Void) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { failed(error)
                    return }
            DispatchQueue.main.async() { () -> Void in
                self.image = image
            }
            finished(image)
            }.resume()
    }
    
    func downloadedFrom(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit,finished:@escaping (_ urlImage:UIImage)-> Void,failed:@escaping (_ error:Error?)->Void) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode, finished: { (image) in
            finished(image)
        }) { (error) in
            failed(error)
        }    }
}
