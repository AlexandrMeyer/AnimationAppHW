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
    
    enum preset: String {
        case shake
        case pop
        case morph
        case squeeze
        case wobble
        case swing
        case flipX
        case flipY
        case fall
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case fadeIn
        case fadeOut
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case flash
    }
    
    enum curve: String {
        case spring, linear, easeIn, easeOut, easeInOut
    }
   
    let force = String(format: "%.2f", Float.random(in: 0...2))
    let duration = String(format: "%.2f", Float.random(in: 1...2))
    let delay = String(format: "%.2f", Float.random(in: 0.1...0.6))
}
