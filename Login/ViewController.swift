//
//  ViewController.swift
//  Login
//
//  Created by student7 on 3/1/19.
//  Copyright © 2019 student7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!

    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } //end viewDidLoad()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton  {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    } //end prepare

    
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButon(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }//forgotPasswordButton action

}

