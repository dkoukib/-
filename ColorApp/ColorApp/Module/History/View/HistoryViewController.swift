//
//  HistoryViewController.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/12/08.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    // テーブルビュー
    @IBOutlet private weak var tableView: UITableView! {
        willSet {
            // レジスタに登録
            newValue.register(HistoryCell.nib, forCellReuseIdentifier: HistoryCell.name)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

// テーブルビューせ表示に必要なメソッド
extension HistoryViewController: UITableViewDataSource {
    // 表示するセルの数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // 表示したいセルの取得
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HistoryCell.name, for: indexPath) as! HistoryCell
        return cell
    }
    
}


extension HistoryViewController: UITableViewDelegate {
    
}
