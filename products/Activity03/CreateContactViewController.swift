//
//  CreateContactViewController.swift
//  Activity03
//
//  Created by student on 4/25/22.
//

import UIKit

class CreateContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var contactNumber: UITextField!
    @IBOutlet weak var contactName: UITextField!
    
    @IBAction func addContact(_ sender: Any) {
        let ar = [contactName.text!,contactNumber.text!]
        contacts.append(ar)
        _ = navigationController?.popToRootViewController(animated: true)
    }

}

