//
//  UserData.swift
//  clubs
//
//  Created by Kenneth Aguilar on 6/1/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//


import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var clubs = clubsData
}
