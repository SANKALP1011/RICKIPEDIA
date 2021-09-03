//
//  FactModel.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 25/07/21.
//

import Foundation
import SwiftyJSON

struct FactModel{
    
    var name: String = ""
    var status: String = ""
    var species: String = ""
    var gender: String = ""
    var image: String = ""
    

    
    init() {
     
    }
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.status = json["status"].stringValue
        self.species = json["species"].stringValue
        self.gender = json["gender"].stringValue
        self.image = json["image"].stringValue
        
        
        
        
    }
    
}
