//
//  ClubRow.swift
//  CLUBS
//
//  Created by Lorena Macias on 5/27/20.
//  Copyright © 2020 AWSStudent. All rights reserved.
//

import SwiftUI

struct ClubRow: View {
    var club: Club
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 140.0)
                .foregroundColor(Color.blue)
                .overlay(
                    Text(club.clubName)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.leading, 80),
                        alignment: .leading
                )


        }
    }
}

struct ClubRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ClubRow(club: clubsData[0])
        }
//        .previewLayout(.fixed(width: 500, height: 150))
    }
}
