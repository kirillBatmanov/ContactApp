//
//  MainContactListViewController.swift
//  ContactApp
//
//  Created by Кирилл Батманов on 26.10.2021.
//

import UIKit

class MainContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let descriptionContactVC = segue.destination as! DescriptionContactViewController
            descriptionContactVC.person = persons[indexPath.row]
        }
        
    }
    
}
