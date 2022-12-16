//
//  FifthViewController.swift
//  TableView
//
//  Created by Mac on 01/11/22.
//

import UIKit

class FifthViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let SubTitleCell = self.InfoTableView.dequeueReusableCell(withIdentifier: "SubTitleCell")
        SubTitleCell?.backgroundColor = .purple
        SubTitleCell?.textLabel!.text = "Sachin"
        SubTitleCell?.detailTextLabel!.text = "9579156425"
        SubTitleCell?.imageView?.image = UIImage(named: "download")
        return SubTitleCell!
    }
    

    @IBOutlet weak var InfoTableView: UITableView!
    
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoTableView.dataSource = self
        InfoTableView.delegate = self
        
     }

}
