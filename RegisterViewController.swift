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
    
    var gender: String?
    var factor: CGFloat = CGFloat(1.6)
    
    @IBAction func didTapMale(sender: AnyObject) {
        if gender != "male" {
            gender = "male"
            updateUI()
        }
    }
    
    @IBAction func didTapFemale(sender: AnyObject) {
        if gender != "female" {
            gender = "female"
            updateUI()
        }
    }
    
    func updateUI() {
        setHighlight()
        setLowlight()
    }
    
    func setLowlight() {
        let check = (gender == "male") ? femaleCheck : maleCheck
        let avatar = (gender == "male") ? femaleAvatar : maleAvatar
        let text = (gender == "male") ? femaleText : maleText
    
        check.alpha = 0
        UIView.animateWithDuration(0.1, animations: {
            avatar.transform = CGAffineTransformIdentity
            avatar.alpha = 0.6
            text.alpha = 0.6
        })
    }
    
    func setHighlight() {
        let check = (gender == "male") ? maleCheck : femaleCheck
        let avatar = (gender == "male") ? maleAvatar : femaleAvatar
        let text = (gender == "male") ? maleText : femaleText
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil , animations: {
            avatar.transform = self.transform()
            avatar.alpha = 1
            text.alpha = 1
            check.alpha = 1
        }, completion: nil)
    }
    
    func transform() -> CGAffineTransform {
        var tx = CGFloat(0), ty = CGFloat(0)
        
        if gender == "male" {
            tx = -maleAvatar.frame.size.width * (factor - 1) / 2
            ty = -maleAvatar.frame.size.height * (factor - 1) / 2
        } else {
            tx = femaleAvatar.frame.size.width * (factor - 1) / 2
            ty = -femaleAvatar.frame.size.height * (factor - 1) / 2
        }
        
        let scale = CGAffineTransformMakeScale(factor, factor)
        let translate = CGAffineTransformMakeTranslation(tx, ty)
        
        return CGAffineTransformConcat(scale, translate)
    }
}
