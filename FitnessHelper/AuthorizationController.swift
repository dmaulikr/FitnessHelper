//
//  AuthorizationController.swift
//  FitnessHelper
//
//  Created by Alex on 30.01.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import UIKit

class AuthorizationController: UIViewController {
    @IBOutlet weak var authorizationLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginField: UITextField!
   
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Авторизация"
        
        self.view.backgroundColor = Info.sharedObject.colorFonWit
        
        authorizationLabel.textColor = Info.sharedObject.colorText
        
        loginField.placeholder = "Логин"
        loginField = styleTextField(view: (loginField)!)
        
        passwordField.placeholder = "пароль"
        passwordField = styleTextField(view: (passwordField)!)
        //passwordField.secureTextEntry = true
        
        actionButton.setTitle("Авторизоваться", for: .normal)
        actionButton.backgroundColor = Info.sharedObject.colorCell
        actionButton.tintColor = Info.sharedObject.colorText
        actionButton.layer.cornerRadius = 8
        actionButton.layer.borderWidth = 2.0
        actionButton.layer.borderColor = Info.sharedObject.colorText.cgColor
        actionButton.layer.masksToBounds = true
        actionButton.addTarget(self, action: #selector(tappedBackButton), for: UIControlEvents.touchDown)


        // Do any additional setup after loading the view.
    }
    
    func styleTextField (view:UITextField) -> UITextField
    {
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 8
        view.layer.borderColor = Info.sharedObject.colorText.cgColor
        view.layer.masksToBounds = true
        return view
    }
    
    func tappedBackButton() {
        
        self.navigationController!.popViewController(animated: true)
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
