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
        NavigationLink(destination: ClubDetail(club: club)){
            ZStack(alignment: .leading){
            
                Rectangle()
                    .foregroundColor(Color.blue)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 140)
                HStack{
                    Text(club.clubName)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.leading, 90)
                    }
                }

        }


    }
}

struct ClubRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ClubRow(club: clubsData[0])
        }
        .previewLayout(.fixed(width: 500, height: 150))
    }
}
