//
//  ViewController.swift
//  Activity03
//
//  Created by student on 4/25/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row][0]
        return cell
    }
        
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "celltoDetail" {
           let destination = segue.destination as! ContactDetailViewController
            destination.contactNumber = contacts[(tableView.indexPathForSelectedRow?.row)!][1]
            destination.name = contacts[(tableView.indexPathForSelectedRow?.row)!][0]
        }
    }


}

