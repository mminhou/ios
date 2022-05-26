//
//  ViewController.swift
//  InstagramFeed
//
//  Created by CMM on 2022/05/15.
//

import UIKit
import Foundation
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {}
    override func viewDidAppear(_ animated: Bool) {}
    override func viewWillDisappear(_ animated: Bool) {}
    override func viewDidDisappear(_ animated: Bool) {}
    override func viewDidLoad() {
        self.tableView.reloadData()
    }
    deinit{ }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "webCell", for: indexPath) as! WebViewTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableCell
            return cell
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:  // PostCell
            return self.view.frame.height/4
        case 2:  // WebViewTableViewCell
            return 500
        default:
            return UITableView.automaticDimension
        }
    }
    
}


class TableCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        
    }
}
