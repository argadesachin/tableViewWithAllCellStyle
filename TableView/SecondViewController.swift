//
//  SecondViewController.swift
//  TableView
//
//  Created by Mac on 01/11/22.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let BasicCell = self.InfoTableView.dequeueReusableCell(withIdentifier: "BasicCell")
        BasicCell?.textLabel!.text = "sachin"
        BasicCell?.backgroundColor = .red
        
        return BasicCell!
    }
    

    
    @IBOutlet weak var InfoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoTableView.dataSource = self
        InfoTableView.delegate = self
     }
}
