//
//  Animation.swift
//  AnimationAppHW
//
//  Created by Александр on 21.09.21.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        felay" \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "spring",
            force: Float.random(in: 0.3...1.2),
            duration: Float.random(in: 1...2),
            delay: Float.random(in: 0.2...0.8)
        )
    }
}


