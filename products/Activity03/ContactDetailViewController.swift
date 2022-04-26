//
//  ContactDetailViewController.swift
//  Activity03
//
//  Created by student on 4/25/22.
//

import UIKit

class ContactDetailViewController: UIViewController {
    var name = ""
    var contactNumber = ""
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactNameLabel.text = "Contact Name: \(name)"
        contactNumberLabel.text = "Contact Number: \(contactNumber)"
    }


}
