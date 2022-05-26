//
//  Post.swift
//  InstagramFeed
//
//  Created by CMM on 2022/05/23.
//

//MARK: STEP1. 데이터 모델 작성하기
import Foundation

public func dataFromFile(_ filename : String) ->Data?{
    
    @objc class TestClass: NSObject{ }
    let bundle = Bundle(for: TestClass.self)
    if let path = bundle.path(forResource: filename, ofType: "json"){
        return (try? Data(contentsOf: URL(fileURLWithPath: path)))
    }
    return nil
}

class Post {
    var name: String?
    var pictureUrl: String?
    var email: String?
    var about: String?
    var likes: Int?
    var images: [String]?
    
    init?(data: Data) {
        do {
        
        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any], let body = json["data"] as? [String: Any] {
            
            self.name = body["name"] as? String
            self.pictureUrl = body["pictureUrl"] as? String
            self.email = body["email"] as? String
            self.about = body["about"] as? String
            self.likes = body["likes"] as? Int
            self.images = body["images"] as? [String]
            
            //json 데이터에서 배열 가져오기
//            if let posts = body["posts"] as? [String]
        }
        } catch {
            
            print("Error deserializing JSON: \(error)")
            return nil
            
        }
    }
}

