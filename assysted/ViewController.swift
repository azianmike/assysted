//
//  ViewController.swift
//  assysted
//
//  Created by michaell on 1/23/16.
//  Copyright © 2016 azianmike. All rights reserved.
//

import UIKit
import SwiftyButton


class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: SwiftyButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: SwiftyButton!
    @IBOutlet var loginView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginButton.buttonColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1)
        loginButton.shadowColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1)

        loginButton.shadowHeight     = 0;
        loginButton.cornerRadius     = 5;
        
        registerButton.buttonColor = UIColor(red: 52/255, green: 219/255, blue: 152/255, alpha: 1)
        registerButton.shadowColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1)
        
        registerButton.shadowHeight     = 0;
        registerButton.cornerRadius     = 5;
    }

    
    @IBAction func loginActionTemp(sender: AnyObject) {
        
        func loginBlock( user:PFUser?, loginError: NSError? )
        {
            if user != nil
            {
                
            }
            else
            {
                let loginFailure =
                UIAlertController(title: "Login failure", message: "Please retry.", preferredStyle: .Alert);
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
                    // ...
                }
                loginFailure.addAction(cancelAction)
                self.presentViewController(loginFailure, animated: true, completion: nil);
                
            }
        }

        
        PFUser.logInWithUsernameInBackground(emailTextField.text!, password: passwordTextField.text!){
            (user: PFUser?, error: NSError?) -> Void in
            loginBlock(user, loginError: error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

