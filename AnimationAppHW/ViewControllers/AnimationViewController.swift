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
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Private properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }
    
    // MARK: - IBActions
    @IBAction func runAnimationButtonTapped(_ sender: SpringButton) {
        descriptionLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

