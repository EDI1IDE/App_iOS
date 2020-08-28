//
//  NasaItem.swift
//  App_iOS
//
//  Created by user178431 on 8/28/20.
//  Copyright © 2020 com.fiek. All rights reserved.
//

import UIKit
import Alamofire
import RealmSwift
import SwiftyJSON

class NasaItem: Object {
    @objc dynamic var superId: Int = 0
    @objc dynamic var id: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var photo: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var desc: String = ""
    
    static func create(from json : JSON) -> NasaItem? {
        let data = json["data"].array?.first
        let links = json["links"].array?.first
        if let name = data!["title"].string {
            
            let item = NasaItem()
            item.name = name
            item.id = data?["nasa_id"].string ?? ""
            item.photo = links?["href"].string ?? ""
            item.title = data?["nasa_id"].string ?? ""
            item.desc = data?["description"].string ?? ""
            return item
        }
        return nil
    }
    
    func getUrl() -> URL? {
        if photo.isEmpty { return nil }
        return URL(string: photo)
    }
    override class func primaryKey() -> String? {
        return "superId"
    }
}
