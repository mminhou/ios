//
//  PostViewModel.swift
//  InstagramFeed
//
//  Created by CMM on 2022/05/23.
//

import UIKit
import Foundation


struct PostCellViewModel {
    var name: String
    var pictureUrl: String
    var email: String
    var about: String
    var likes: Int
    var imgaes: [String]
}

class PostViewModel: NSObject {
    
    var items = [PostCellViewModel]()
    
    // MARK: STEP5. ViewModel 초기화
    override init() {
        super.init()
        
        guard let data = dataFromFile("ServerData") , let post = Post(data: data) else {
            return
        }
        
        print(data)
        print(post)
//            let postItem = PostCellViewModel(name: name, pictureUrl: picUrl, email: email, about: about, images: images, likes: likes)
            
//            items.append(postItem)
//        }
    }
}


//MARK: STEP6. DataSource 생성
//extension PostViewModel: UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return items.count
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items[section].rowCount
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let item = items[indexPath.section]
//        
//        switch item.type {
//            
//        case .post:
//            if let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.identifier, for: indexPath) as? PostCell{
//                
//                cell.item = item
//                return cell
//            }
//            
//            return UITableViewCell()
//        }
//    }
//}

//extension PostViewModel: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80+110
//    }
//}
//
//
//// MARK: STEP4. 각셀 객체 뷰 모델
//class _PostViewModelItem: PostViewModelItem {
//
//    var type: PostViewModelItemType {
//        return .post
//    }
//
//    var rowCount: Int {
//        return 3
//    }
//
//    var name: String
//    var pictureUrl: String
//    var email: String
//    var about: String
//    var images: [String]
//    var likes: Int
//
//    init(name: String, pictureUrl: String, email: String, about: String, images: [String], likes: Int) {
//        self.name = name
//        self.pictureUrl = pictureUrl
//        self.email = email
//        self.about = about
//        self.images = images
//        self.likes = likes
//    }
//}
