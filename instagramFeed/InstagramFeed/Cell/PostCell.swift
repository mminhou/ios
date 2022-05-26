//
//  PostCell.swift
//  InstagramFeed
//
//  Created by CMM on 2022/05/23.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    
    static var identifier: String { return String(describing: self) }
    static var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initView() {
        backgroundColor = .clear
        
        preservesSuperviewLayoutMargins = false
        separatorInset = UIEdgeInsets.zero
        layoutMargins = UIEdgeInsets.zero
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        pictureImageView.image = nil
        aboutLabel.text = nil
        images.image = nil
        likesLabel.text = nil
    }
    
    
//    var item : PostViewModelItem?{
//        didSet{
//            //다운 캐스팅
//            guard let item = item as? _PostViewModelItem else { return  }
//
//            nameLabel?.text = item.name
//            pictureImageView?.image = UIImage(named: item.pictureUrl)
//
//
//        }
//    }
//
//
//
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
}
