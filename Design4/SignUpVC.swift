//
//  SignUpVC.swift
//  Design4
//
//  Created by Sebastian Strus on 2017-03-27.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func dismissPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        // sign up logic
        dismiss(animated: true, completion: nil)
    }

}
