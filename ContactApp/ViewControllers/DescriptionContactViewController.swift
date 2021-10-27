//
//  DescriptionContactViewController.swift
//  ContactApp
//
//  Created by Кирилл Батманов on 26.10.2021.
//

import UIKit

class DescriptionContactViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
    
}
