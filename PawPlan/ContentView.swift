//
//  ContentView.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var days : [Day] =  [Day(year: "2021", month: "March", day1: "1"),
            Day(year: "2021", month: "March", day1: "1"),
            Day(year: "2021", month: "March", day1: "2"),
           Day(year: "2021", month: "March", day1: "2"),
            Day(year: "2021", month: "March", day1: "2"),
           Day(year: "2021", month: "March", day1: "2"),
           Day(year: "2021", month: "March", day1: "2"),
               ].sorted{($0.day1 < $1.day1)
               }
    var body: some View {
     ZStack{
                    //orange background image
                    Image("background")
                        .opacity(0.1)
                    VStack{
                        //each cardview statement creates one contact with email, name, and profile image
                        DayView(day: $days[0])
                        DayView(day: $days[1])
                        DayView(day: $days[2])
                        DayView(day: $days[3])
                        dayView(day: $days[4])
                        // Before button is pressed, this contact is Prince. When button is pressed, the last contact becomes Tyler.
                      
                       
                        
                        
                        Spacer()
                        
                    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                        .padding(.top, 80)
                    
                    
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
