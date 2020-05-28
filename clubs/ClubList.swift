//
//  ClubList.swift
//  CLUBS
//
//  Created by Lorena Macias on 5/27/20.
//  Copyright © 2020 AWSStudent. All rights reserved.
//

import SwiftUI

struct ClubList: View {
    var body: some View {
        List(clubsData){ club in
            ClubRow(club: club)
            
        }
    }
}

struct ClubList_Previews: PreviewProvider {
    static var previews: some View {
        ClubList()
    }
}

