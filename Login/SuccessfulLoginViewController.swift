//
//  SuccessfulLoginViewController.swift
//  Login
//
//  Created by student7 on 3/2/19.
//  Copyright © 2019 student7. All rights reserved.
//

import UIKit

class SuccessfulLoginViewController: UIViewController {

    
    @IBOutlet weak var successLabel: UILabel!
    
    //create variable to receive username
    var receiveUsername: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        successLabel.text = "Welcome \(receiveUsername!)"
        // Do any additional setup after loading the view.
    } //end viewDidLoad()
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} //end SuccessfulLoginViewController
