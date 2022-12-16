//
//  FourthViewController.swift
//  TableView
//
//  Created by Mac on 01/11/22.
//

import UIKit

class FourthViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let LeftCell = self.InfoTableView.dequeueReusableCell(withIdentifier: "LeftCell")
        LeftCell?.textLabel!.text = "Good"
        LeftCell?.detailTextLabel!.text = "Morning"
        LeftCell?.backgroundColor = .cyan
        
        return LeftCell!
    }
    
    @IBOutlet weak var InfoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InfoTableView.dataSource = self
        InfoTableView.delegate = self

       }
    
}
