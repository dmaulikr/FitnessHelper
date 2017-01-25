//
//  TestController.swift
//  FitnessHelper
//
//  Created by Alex on 23.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit
import Foundation
import QuartzCore

class TestController: UIViewController {
    var imageView : UIImageView = UIImageView()
    
    @IBOutlet weak var testTextFild: UITextField!
    @IBOutlet weak var fildConstranHeight: NSLayoutConstraint!

    @IBOutlet weak var test2Const: NSLayoutConstraint!
    @IBOutlet weak var textFild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //testTextFild.borderStyle = UITextBorderStyle.roundedRect
        textFild.borderStyle = UITextBorderStyle.roundedRect
        var frameRect : CGRect = testTextFild.frame
        frameRect.size.height = 300; //
        testTextFild.frame = frameRect;
        testTextFild.text = "tect"
        
        self.view.setNeedsLayout()
        
        //fildConstranHeight.constant = 300
//        test2Const.constant = 200

        // Do any additional setup after loading the view.
        
        //imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
    }

    @IBAction func clickButton(_ sender: Any) {
        
        let string = testTextFild.text
        print(string as Any)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
