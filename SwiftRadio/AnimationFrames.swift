//
//  AnimationFrames.swift
//  Swift Radio
//
//  Created by ADNAN RIBIC on 09/02/16.
//  Copyright © 2016 ADNAN RIBIC. All rights reserved.
//

import UIKit

class AnimationFrames {
    
    class func createFrames() -> [UIImage] {
    
        // Setup "Now Playing" Animation Bars
        var animationFrames = [UIImage]()
        for i in 0...3 {
            if let image = UIImage(named: "NowPlayingBars-\(i)") {
                animationFrames.append(image)
            }
        }
        
        for (var i = 2; i > 0; i--) {
            if let image = UIImage(named: "NowPlayingBars-\(i)") {
                animationFrames.append(image)
            }
        }
        return animationFrames
    }

}