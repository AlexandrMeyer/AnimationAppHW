//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Александр on 21.09.21.
//

import Spring

class AnimationViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationButton: UIButton!
    
    // MARK: - Private properties
    private let animations = Animation.getAnimation()
    private var animationIndex: Int {
        Int.random(in: 0..<animations.count)
    }
    private var currentAnimation: Animation {
        animations[animationIndex]
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(for: currentAnimation)
    }
    
    // MARK: - IBActions
    @IBAction func runAnimationButtonTapped(_ sender: SpringButton) {
        currentAnimation(from: currentAnimation)
    }
    
    // MARK: - Private Methods
    private func currentAnimation(from animation: Animation) {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()

        animationButton.setTitle("Run \(animation.preset)", for: .normal)
        
        updateUI(for: animation)
    }

    private func updateUI(for animation: Animation) {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
}

