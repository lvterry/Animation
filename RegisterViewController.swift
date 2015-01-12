//
//  RegisterViewController.swift
//  Animation
//
//  Created by Terry Wang on 1/12/15.
//  Copyright (c) 2015 tataUFO. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var maleText: UIImageView!
    @IBOutlet weak var femaleText: UIImageView!
    
    @IBOutlet weak var maleAvatar: UIImageView!
    @IBOutlet weak var femaleAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scale = CGAffineTransformMakeScale(0.8, 0.8)
        let translate = CGAffineTransformMakeTranslation(maleAvatar.frame.size.width * 0.2, maleAvatar.frame.size.height * 0.2)

        maleAvatar.transform = CGAffineTransformConcat(scale, translate)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
