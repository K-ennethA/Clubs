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
    var body: some View {
        NavigationView{
            List{
                ForEach(clubsData, id: \.self){ club in
                    EventRow(club: club, events: club.events)
                }
                
            }
        .navigationBarTitle("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(clubs: clubsData)
    }
}
