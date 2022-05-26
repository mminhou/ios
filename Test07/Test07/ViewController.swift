//
//  ViewController.swift
//  Test07
//
//  Created by 최민호 on 2022/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()
    }

    deinit{
        
    }
    func allowFunc(){
        let cell = UIImageView()
        defer {
            // defer 는 메모리할당 해제할때 사용
            // 마지막에 쓸 필요는 없다. 알아서 마지막에 실행된다.
        }
        
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableCell
        cell.selectionStyle = .none
        
        
        return cell
    }
}

class TableCell : UITableViewCell{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override class func awakeFromNib() {
        
    }
}

extension TableCell : UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionCell
        item.backgroundColor = UIColor( red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        item.imageView.image = UIImage(named: "sin.jpeg")
        item.label.text = "신"
        return item
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}

class CollectionCell:UICollectionViewCell{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override class func awakeFromNib() {
        // Default 값을 설정해 줄때 사용한다.
    }
}
