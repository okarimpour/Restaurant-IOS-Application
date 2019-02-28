//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by omid karimpour on 2016-07-18.
//  Copyright © 2016 omid karimpour. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    
    var rating:String?
    
    @IBAction func ratingSelected(_ sender: UIButton) {
        
        switch (sender.tag) {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        
        performSegue(withIdentifier: "unwindToDetailView", sender: sender)
    }


    //scale the animation and set the time to 0.7 sec
    override func viewDidAppear(_ animated: Bool) {
      
        //First style
          UIView.animate(withDuration: 0.4, delay: 0.0, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransform.identity
            }, completion: nil)
        
        //Second style
//        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3,
//            initialSpringVelocity: 0.5, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
  
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //using scale and translate feature in the same time
        let scale = CGAffineTransform(scaleX: 0.0, y: 0.0)
        let translate = CGAffineTransform(translationX: 0, y: 500)
        ratingStackView.transform = scale.concatenating(translate)

        //apply blurring effect on the image
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        
        // Do any additional setup after loading the view.
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
