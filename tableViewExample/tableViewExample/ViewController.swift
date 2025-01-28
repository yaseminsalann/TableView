//
//  ViewController.swift
//  tableViewExample
//
//  Created by Yasemin salan on 28.01.2025.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //kaç tane döndürüleceği gösterilir
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //gösterilen hücrelerde ne verisi olucak burda tanımlanır.
        let cell = UITableViewCell()
        //cell.textLabel?.text! = "TableView"
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
        content.secondaryText = "Swift"
        cell.contentConfiguration = content
        return cell
    }
}

