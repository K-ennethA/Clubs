//
//  EventDetail.swift
//  clubs
//
//  Created by Kenneth Aguilar on 5/27/20.
//  Copyright © 2020 StudentDevs. All rights reserved.
//

import SwiftUI

struct EventDetail: View {
    var event: Event
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                Text(event.eventTitle)
                    .font(.title)
                Spacer()
                Image(systemName: "bell.fill")
                    .foregroundColor(Color.init(UIColor.systemBlue))
                    .font(Font.system(.largeTitle))
            }
            .padding(.bottom,40)
            HStack(){
                Image(systemName: "calendar")
                Text(event.eventDate)
            }
            HStack{
                Image(systemName: "house")
                Text(event.eventTag)
            }
            Spacer()
            Text(event.eventDescription)
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                }){
                    Text("Register")
                        .frame(width: 100, height:30)
                        .font(.subheadline)
                        .background(Color.init(UIColor.systemBlue))
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .cornerRadius(10)
                }
                Spacer()
            }

    
            
            
            
        }
        .padding(30)
        
            
        
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(event: clubsData[0].events[0])
    }
}

