//
//  ClubList.swift
//  CLUBS
//
//  Created by Lorena Macias on 5/27/20.
//  Copyright © 2020 AWSStudent. All rights reserved.
//

import SwiftUI

struct ClubList: View {

    @EnvironmentObject var userData: UserData


    var body: some View {

        VStack{

            Toggle(isOn: $userData.showFavoritesOnly) {
                       Text("Show Favorites Only")
            }
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            ForEach(userData.clubs) { club in
                if !self.userData.showFavoritesOnly || club.isFavorite {
                    NavigationLink(destination: ClubDetail(club: club)
                        .environmentObject(self.userData)
                    ){
                        ClubRow(club: club)
                    }
                }

            }
            Spacer()




        }
        .navigationBarTitle(Text("Clubs"))


    }
}


struct ClubList_Previews: PreviewProvider {
    static var previews: some View {
        ClubList()
            .environmentObject(UserData())

    }
}
