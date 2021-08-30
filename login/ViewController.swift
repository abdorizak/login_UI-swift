//
//  ViewController.swift
//  login
//
//  Created by Abdirizak Hassan on 8/29/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameTextbox: UITextField!
    @IBOutlet var passwordTextbox: UITextField!
    
    var correctUsername = "admin"
    var correctPassword = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        if usernameTextbox.text == correctUsername && passwordTextbox.text == correctPassword {
            let deadLine = DispatchTime.now() + .seconds(3)
            DispatchQueue.main.asyncAfter(deadline: deadLine) {
                print("Login..!")
                let user = User(name: "X-man", age: 22, avatar: UIImage(imageLiteralResourceName: "gg2.jpg"))
                self.performSegue(withIdentifier: "segue.Main.homeApp", sender: user)
            }
        } else {
            showAlert(title: "Invalid..!!", message: "check your username and password")
        }
    }
    
    func showAlert(title: String, message: String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        present(ac, animated: true, completion: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let homeApp = segue.destination as? Home, let user = sender as? User {
            homeApp.user = user
             
        }
    }
    

}

