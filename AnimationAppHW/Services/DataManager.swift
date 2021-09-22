//
//  DataManager.swift
//  AnimationAppHW
//
//  Created by Александр on 21.09.21.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    private init() {}
    
    let preset = [
        "shake", "pop", "morph", "squeeze",
        "wobble", "swing", "flipX", "flipY",
        "fall", "squeezeLeft", "squeezeRight",
        "squeezeDown", "squeezeUp", "slideLeft",
        "slideRight", "slideDown", "slideUp",
        "fadeIn", "fadeOut", "fadeInLeft",
        "fadeInRight", "fadeInDown", "fadeInUp",
        "zoomIn", "zoomOut", "flash"
    ]
    
    let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
}
