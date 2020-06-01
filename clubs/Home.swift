//
//  Home.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

struct Home: View {
    var clubs: [Club]
    @EnvironmentObject var userData: UserData

    var body: some View {

        NavigationView{
            List{
                ForEach(clubsData, id: \.self){ club in
                    EventRow(club: club, events: club.events)
                }
                .listRowInsets(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
                NavigationLink(destination: ClubList()
//                    .environmentObject(userData)
                ){
                    Text("All Clubs")
                }.onAppear(perform: {
                    UITableView.appearance().separatorStyle = .singleLine
                })
            }
        .navigationBarTitle("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return Home(clubs: userData.clubs)
            .environmentObject(userData)

    }
}
