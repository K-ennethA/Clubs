//
//  EventRow.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    var club: Club
    var events: [Event]
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Text(club.clubName)
                .font(.headline)
                .padding(.leading, 5)
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(alignment: .top, spacing: 10){
                    ForEach(self.events) { event in
                        NavigationLink(
                            destination: EventDetail(event: event)
                        ){
                            EventItem(event: event)
                        }
                    }
                }
            }
                

        }
        .padding(.leading,20)

    }
}

struct EventItem: View {
    var event: Event

    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Text(event.eventDate)
                .font(.subheadline)
            Text(event.eventTitle)
                .font(.headline)
            Text(event.eventTag)
                .font(.subheadline)
        }
        .frame(width: 150, height: 110)
        .padding(20)
        .background(Color.init(UIColor.systemGray6))
        .foregroundColor(.primary)
        .cornerRadius(10)
    
        
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(club: clubsData[0],events: Array(clubsData[0].events))
    }
}
