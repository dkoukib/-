//
//  HistoryViewController.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/12/08.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}


extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}


extension HistoryViewController: UITableViewDelegate {
    
}
