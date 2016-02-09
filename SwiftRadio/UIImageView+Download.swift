//
//  UIImageView+AlbumArtDownload.swift
//  Swift Radio
//
//  Created by ADNAN RIBIC on 09/02/16.
//  Copyright © 2016 ADNAN RIBIC. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func loadImageWithURL(url: NSURL, callback:(UIImage) -> ()) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        
        let downloadTask = session.downloadTaskWithURL(url, completionHandler: {
            [weak self] url, response, error in
            
            if error == nil && url != nil {
                if let data = NSData(contentsOfURL: url!) {
                    if let image = UIImage(data: data) {
                        
                        dispatch_async(dispatch_get_main_queue()) {
                            
                            if let strongSelf = self {
                                strongSelf.image = image
                                callback(image)
                            }
                        }
                    }
                }
            }
        })
        
        downloadTask.resume()
        return downloadTask
    }
}


