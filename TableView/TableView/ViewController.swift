//
//  ViewController.swift
//  TableView
//
//  Created by Mac on 31/10/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.Contact.dequeueReusableCell(withIdentifier: "Cell")
        Cell?.textLabel!.text = "bitcode"
        Cell?.backgroundColor = .orange
        return Cell!
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Contact.dataSource = self
        Contact.delegate = self
    }

    @IBOutlet weak var Contact: UITableView!
    
    
}

