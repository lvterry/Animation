//
//  RegisterViewController.swift
//  Animation
//
//  Created by Terry Wang on 1/12/15.
//  Copyright (c) 2015 Terry. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var maleText: UIImageView!
    @IBOutlet weak var femaleText: UIImageView!
    
    @IBOutlet weak var maleAvatar: UIImageView!
    @IBOutlet weak var femaleAvatar: UIImageView!
    
    @IBOutlet weak var maleCheck: UIImageView!
    @IBOutlet weak var femaleCheck: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        toggleMaleSelection(false)
        toggleFemaleSelection(false)
    }
    
    @IBAction func didTapMale(sender: AnyObject) {
        toggleMaleSelection(true)
        toggleFemaleSelection(false)
    }
    
    @IBAction func didTapFemale(sender: AnyObject) {
        toggleMaleSelection(false)
        toggleFemaleSelection(true)
    }
    
    func toggleMaleSelection(flag: Bool) {
        let view = self.maleAvatar
        let text = self.maleText
        let check = self.maleCheck
        
        if flag {
            let scale = CGAffineTransformMakeScale(1, 1)
            let transform = CGAffineTransformTranslate(scale, 0, 0)
            
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil , animations: {
                view.transform = transform
                view.alpha = 1
                text.alpha = 1
                check.alpha = 1
            }, completion: nil)
        } else {
            let scale = CGAffineTransformMakeScale(0.6, 0.6)
            let transform = CGAffineTransformTranslate(scale, 40.5, 35)
            check.alpha = 0
            UIView.animateWithDuration(0.1, animations: {
                view.transform = transform
                view.alpha = 0.6
                text.alpha = 0.6
            })
            
        }
    }
    
    func toggleFemaleSelection(flag: Bool) {
        let view = self.femaleAvatar
        let text = self.femaleText
        let check = self.femaleCheck
        
        if flag {
            let scale = CGAffineTransformMakeScale(1, 1)
            let transform = CGAffineTransformTranslate(scale, 0, 0)
            
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil , animations: {
                view.transform = transform
                view.alpha = 1
                text.alpha = 1
                check.alpha = 1
            }, completion: nil)
        } else {
            let scale = CGAffineTransformMakeScale(0.6, 0.6)
            let transform = CGAffineTransformTranslate(scale, -40.67, 36.33)
            check.alpha = 0
            UIView.animateWithDuration(0.1, animations: {
                view.transform = transform
                view.alpha = 0.6
                text.alpha = 0.6
            })
            
        }
        
    }
}
