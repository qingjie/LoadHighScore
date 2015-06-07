//
//  ViewController.swift
//  LoadHighScore
//
//  Created by qingjiezhao on 6/7/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var lblHighscore: UILabel!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    @IBOutlet weak var imgBtn: UIButton!
    
    
    var score = 0
    var highscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var HighScoreDefault = NSUserDefaults.standardUserDefaults()
        if(HighScoreDefault.valueForKey("highscore") != nil){
            highscore = HighScoreDefault.valueForKey("highscore") as! NSInteger
            lblHighscore.text = NSString(format: "Highscore: %i", highscore) as String
            println(lblHighscore.text)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func resetBtnTapped(sender: AnyObject) {
        score = 0
        lblScore.text = NSString(format: "Score: %i", score) as String
    }

    @IBAction func ImgBtnTapped(sender: AnyObject) {
        score++
        lblScore.text = NSString(format: "Score: %i", score) as String
        if (score > highscore){
            highscore = score
            lblHighscore.text = NSString(format: "Highscore: %i", highscore) as String
            
            var HighScoreDefault = NSUserDefaults.standardUserDefaults()
            HighScoreDefault.setValue(highscore, forKey: "highscore")
            HighScoreDefault.synchronize()
        }
        
    }

}

