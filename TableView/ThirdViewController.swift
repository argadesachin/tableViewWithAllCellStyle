//
//  ThirdViewController.swift
//  TableView
//
//  Created by Mac on 01/11/22.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let RightCell = self.InfoTableView.dequeueReusableCell(withIdentifier: "RightCell")
        RightCell?.detailTextLabel!.text = "Hello"
        RightCell?.textLabel!.text = "Hey"
        RightCell?.backgroundColor = .brown
        return RightCell!
    }
    
    @IBOutlet weak var InfoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoTableView.dataSource = self
        InfoTableView.delegate = self
    }
}
