//
//  Events.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

var colorDict: [String:Color] = [
    "Social" : Color.init(UIColor.systemTeal),
    "Meeting": Color.init(UIColor.systemGray4)
]

struct Event: Hashable, Codable, Identifiable {
    var id: Int
    var eventTitle: String
    var eventDate: String
    var eventTag: String
    var eventTime: String
    var eventLocation: String
    var eventDescription: String

}
