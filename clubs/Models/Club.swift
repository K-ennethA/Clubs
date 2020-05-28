//
//  Club.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import Foundation


struct Club: Hashable,Codable, Identifiable {
    var id: Int
    var clubName: String
    var clubDescription: String
    var events: [Event]
}
