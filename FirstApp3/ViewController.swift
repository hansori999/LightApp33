//
//  ViewController.swift
//  FirstApp3
//
//  Created by Myoung-Wan Koo on 2018. 3. 21..
//  Copyright © 2018년 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    let messageArray  = ["May the force be with you","Live long and prosper","To infinity and beyond","Space is big. You just won't believe how vastly, hugely, mindbogglinly big it is",10] as [Any]
    var index=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTap(_ sender: UIButton) {
        print("Button Touched")
        if let nextString = self.messageArray[index] as? String {
            self.messageLabel.text = nextString
        }
        index = index + 1
        index %= self.messageArray.count
    }
    
    // Cleaning
    func updateUI() {
        if lightOn == true{
            self.messageLabel.text = "White"
            self.messageLabel.textColor = UIColor.white
            view.backgroundColor = UIColor.black
            self.messageButton.setTitle("Off", for: .normal)
        } else {
            self.messageLabel.text = "Black"
            self.messageLabel.textColor = UIColor.black
            view.backgroundColor = UIColor.white
            self.messageButton.setTitle("On", for: .normal)
        }
    }


}

