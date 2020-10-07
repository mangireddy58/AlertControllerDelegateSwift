//
//  StackViewController.swift
//  AlertWithDelgate
//
//  Created by Ankit on 2/6/19.
//  Copyright © 2019 BajajAllianz. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let testArray = ["Test test", "dummy dummy", "Test test", "dummy dummy", "Test test dummy dummy", "test test test test test test test test test testtest test test test testtest test test test testtest test test test testtest test test test test", "dummy dummydummy dummydummydummydummydummydummy dummydummydummydummy dummydummydummydummydummy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.bounces = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.estimatedRowHeight = 44
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension StackViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        self.tableView.register(UINib(nibName: "TestCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TestCell
        cell.selectionStyle = .none
        
        cell.nameCell.text = self.testArray[indexPath.row]
        
        return cell
    }
    
    
    
    
    
}
