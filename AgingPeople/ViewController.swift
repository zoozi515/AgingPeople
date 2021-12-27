//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 27/12/2021.
//

import UIKit

class ViewController: UIViewController {

    let listOfNames = ["George","Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonDetCell", for: indexPath)
        
        //add text to the cell using custom design
        cell.textLabel?.text = self.listOfNames[indexPath.row]
        cell.detailTextLabel?.text = "\(arc4random_uniform(90)) years old"

        return cell
    }
}

