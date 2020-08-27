//
//  TableViewController.swift
//  kadai13_first
//
//  Created by 白鳥貢 on 2020/08/25.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let fruits = ["りんご","みかん","バナナ","パイナップル"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell
        
        if indexPath.row % 2 == 1 {
        cell.checkView.image = UIImage(named: "check")
        }
        
        for _ in fruits {
            let fruit = fruits[indexPath.row]
            cell.label.text = fruit
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print("\(indexPath.row)番目が選択されました")
    }
}
