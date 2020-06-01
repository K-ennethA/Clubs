//
//  ClubDetail.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

struct ClubDetail: View {
    var club: Club
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Color.init(UIColor.systemBlue))
                .frame(height: 250)
                .edgesIgnoringSafeArea(.top)
                .overlay(ClubLogoView())
                .padding(.bottom, -50)
            VStack(alignment: .leading){
                Text(club.clubName)
                    .padding(.bottom)
                Text(club.clubDescription)
                Text(club.clubDescription)

                Text(club.clubDescription)

            }
            .padding(40)
            Spacer()
        }
        
    }
}

struct ClubLogoView: View {
    var body: some View {
        Image("acm_logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150,height: 150)
//            .overlay(Circle().stroke(Color.white,lineWidth: 4))
//            .clipShape(Circle())
            .shadow(radius: 10)
    }
}
struct Club_Detail_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetail(club: clubsData[0])
    }
}


