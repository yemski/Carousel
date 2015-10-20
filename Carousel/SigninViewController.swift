//
//  SigninViewController.swift
//  Carousel
//
//  Created by Piers Yem on 10/14/15.
//  Copyright (c) 2015 Piers Yem. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinScroll: UIScrollView!
    @IBOutlet weak var signinView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.activityIndicator.stopAnimating()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
         signinScroll.contentOffset.y = 100
        }
    
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    @IBAction func signinPress(sender: AnyObject) {
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty
            
        {
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            //println("tapped that shiz")
            presentViewController(alertController, animated: true) {
            }
        
        
        }
        else if emailField.text != "yem" || passwordField.text != "a"
        {
            self.activityIndicator.startAnimating()
            let signinalertController = UIAlertController(title: "Signing in", message: "", preferredStyle: .Alert)
            self.presentViewController(signinalertController, animated: true) {}

            self.delay(2, closure: { () -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
            self.activityIndicator.stopAnimating()
            let alertController2 = UIAlertController(title: "Sign in failed", message: "Please re-enter your email address and password", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            }
            // add the OK action to the alert controller
            alertController2.addAction(OKAction)

            self.presentViewController(alertController2, animated: true) {
            }
            self.emailField.text = ""
            self.passwordField.text = ""
                })
        }
        
    
        else {
            
            self.activityIndicator.startAnimating()
            let signinalertController = UIAlertController(title: "Signing in", message: "", preferredStyle: .Alert)
            self.presentViewController(signinalertController, animated: true) {}
          
            delay(2, closure: { () -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
            self.activityIndicator.stopAnimating()
            self.performSegueWithIdentifier("signinSegue", sender: nil)
            })
           
        
        }
    }
}





    





    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


