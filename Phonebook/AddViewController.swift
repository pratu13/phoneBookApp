//
//  AddViewController.swift
//  Phonebook
//
//  Created by pratyush sharma on 23/05/19.
//  Copyright © 2019 pratyush sharma. All rights reserved.
//

import UIKit
import CoreData
class AddViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var titleText = "Add Contact"
    var contact: NSManagedObject? = nil
    var indexPathForContact: IndexPath? = nil

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func addContact(_ sender: Any) {
        
        performSegue(withIdentifier: "unwindToContactList", sender: self)
        
    }
    
    @IBAction func close(_ sender: Any) {
        nameTextField.text = nil
        numberTextField.text = nil
        performSegue(withIdentifier: "unwindToContactList", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleText
        if let contact = self.contact{
            nameTextField.text = contact.value(forKey: "name") as? String
            numberTextField.text = contact.value(forKey: "number") as? String
        }

        // Do any additional setup after loading the view.
    }
    
    
    
    


}
