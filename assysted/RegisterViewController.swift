//
//  RegisterViewController.swift
//  assysted
//
//  Created by michaell on 1/24/16.
//  Copyright © 2016 azianmike. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {


    @IBOutlet weak var backButton: UINavigationItem!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
//                self.navigationController?.navigationBarHidden = false;
        backButton.setLeftBarButtonItem(UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "dismiss:"), animated: true);

    }
    
    func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func registerUser(sender: AnyObject) {
        let newUser = PFUser();
        newUser.username = emailField.text;
        newUser.password = passwordField.text
        newUser.signUpInBackgroundWithBlock{
            (succeeded: Bool, error: NSError?) -> Void in
            if error == nil  //no error
            {
                let registerSuccess = UIAlertController(title: "Register success!", message: "Wahoo!", preferredStyle: .Alert);
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
                    self.dismissViewControllerAnimated(true, completion: nil);
                }
                registerSuccess.addAction(cancelAction)
                self.presentViewController(registerSuccess, animated: true, completion: nil);
            }
            else  //register failure
            {
                let registerSuccess = UIAlertController(title: "Register failure!", message: "Registration error", preferredStyle: .Alert);
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in

                }
                registerSuccess.addAction(cancelAction)
                self.presentViewController(registerSuccess, animated: true, completion: nil);
            }
        }
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
