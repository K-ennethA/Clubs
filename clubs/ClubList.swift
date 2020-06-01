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

        VStack{
            
            ForEach(clubsData) { club in
                NavigationLink(
                    destination: ClubDetail(club: club)
                )
                {
                    ClubRow(club: club)
                }
            }
            Spacer()
            
            
            
            
        }

    }
}


struct ClubList_Previews: PreviewProvider {
    static var previews: some View {
        ClubList()
    }
}

