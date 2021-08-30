//
//  Home.swift
//  login
//
//  Created by Abdirizak Hassan on 8/29/21.
//

import UIKit

class Home: UIViewController {
    @IBOutlet var avatarView: UIImageView!
    @IBOutlet var greetingLabel: UILabel!
    
    var user: User?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let unrappuser = self.user else { return }
        avatarView.image = unrappuser.avatar
        greetingLabel.text = "hey..! \(unrappuser.name) your Age is \(unrappuser.age)"
       
        
    }

}
