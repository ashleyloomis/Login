//
//  ViewController.swift
//  Login
//
//  Created by student7 on 3/1/19.
//  Copyright © 2019 student7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets for text fields and buttons
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    //create dictionary for login credentials
    var loginCredentials = ["ashley", "ash123"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } //end viewDidLoad()

    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUserNameButton)
    } //end forgotUsername action
    
    @IBAction func forgotPasswordButon(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    } //end forgotPasswordButton action
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let sender = sender as? UIButton else {return}
        
        //if user presses button, send relevent to title of next page
        if sender == forgotUserNameButton  {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            //connect with SuccessfulLoginViewController to pass username to title and text field of successful login screen
      
            /* add guard statements if username or password fields are empty!
            guard let usernameTextField != "" else {return} {
               print("Please enter your username")
            }
            */
    
            
            if loginCredentials.contains(String(usernameTextField.text!)) && loginCredentials.contains(String(passwordTextField.text!)) {
            
            guard let successfulLogin = segue.destination as? SuccessfulLoginViewController else {return}
            successfulLogin.receiveUsername = usernameTextField.text //send username to label of sucessful login page
            segue.destination.navigationItem.title = "Successful Login" //send username to title of sucessful login page
                
            } else {
                print("sorry")
            } //end if else for loginCredentials.contains
        } //end else if sender == forgotPasswordButton
      
    } //end prepare




} //end ViewController

