//
//  ViewController.swift
//  ContactsApp
//
//  Created by Julio Estrada on 2/1/18.
//  Copyright © 2018 Julio Estrada. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellId = "cellId"
    let names = ["Papa","Olivia","Bobby","Gina","Leia","Sandy"]
    
    let cNames = ["Carl","Cathy","Capiclo"]
    
    let dNames = ["Dengus","Derrick"]
    
    let twoDimensionalArray = [
        ["Papa","Olivia","Bobby","Gina","Leia","Sandy"],
        ["Carl","Cathy","Capiclo"],
        ["Dengus","Derrick"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = name
        
        return cell
    }

}



















