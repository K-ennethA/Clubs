//
//  Events.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI


struct Event: Hashable, Codable, Identifiable {
    var id: Int
    var eventTitle: String
    var eventDate: String
    var eventTag: String
    var eventTime: String
    var eventLocation: String
    var eventDescription: String

//    var colorDict: [String:Color] = [
//        "Social" : Color.init(UIColor.systemGray6),
//        "Meeting": Color.init(UIColor.systemTeal)
//    ]
//
    
//    enum Tag: String{
//        case social = "Social"
//    }
//    func setTagColor(){
//        
//    }
}
