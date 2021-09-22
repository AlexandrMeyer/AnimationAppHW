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
    
    static func getAnimation() -> [Animation] {
        var animations = [Animation]()

        let preset = DataManager.shared.preset.shuffled()
        let curve = DataManager.shared.curve.shuffled()
        
        for presetIndex in 0..<preset.count {
            let animation = Animation(
                preset: preset[presetIndex],
                curve: curve[Int.random(in: 0..<curve.count)],
                force: Float.random(in: 0.3...1.2),
                duration: Float.random(in: 1...2),
                delay: Float.random(in: 0.2...0.8)
            )
            animations.append(animation)
        }
        return animations
    }
}


