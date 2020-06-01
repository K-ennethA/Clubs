//
//  AppView.swift
//  clubs
//
//  Created by Kenneth Aguilar on 6/1/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            Home(clubs: clubsData)
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
            }
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
//    static let home = Home()
    static var previews: some View {
        AppView()
    }
}
