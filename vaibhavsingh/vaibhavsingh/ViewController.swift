//
//  ViewController.swift
//  vaibhavsingh
//
//  Created by Student on 04/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var otp: UITextField!
    
    
    
    
    @IBAction func btnAction(_ sender: Any) {
        if name.text == "Vaibhav" && otp.text=="1234" {
            
            performSegue(withIdentifier: "secview", sender: nil)
        }else{
            var dialogMessage = UIAlertController(title: "Confirm", message: "Your Otp or name is Wrong name:Vaibhav and otp:1234", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            dialogMessage.addAction(ok)
             self.present(dialogMessage, animated: true, completion: nil)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if seque.indentifier= "secview"{
//            var dest
//        }
//    }
    
    

}


// Present Alert to

