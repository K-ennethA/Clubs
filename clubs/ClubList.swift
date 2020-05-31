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
<<<<<<< HEAD
        List(clubsData){ club in
            ClubRow(club: club)

=======

//        List(clubsData){ club in
//            NavigationLink(destination: ClubDetail(club: club)){
//                ClubRow(club: club)
//            }.frame(width: 435).navigationBarBackButtonHidden(true)
//
//        }
//        .padding(.leading, -21.0)
//        .onAppear(perform: {
//            UITableView.appearance().separatorStyle = .none
//        })
        VStack{
>>>>>>> 36f49de089324f0805c3162422ad13341ac07aab
            
            ForEach(clubsData) { club in
                ClubRow(club: club)
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

