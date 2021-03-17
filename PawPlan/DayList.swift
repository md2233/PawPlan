//
//  DayList.swift
//  PawPlan
//
//  Created by Paria Petramfar (student LM) on 3/17/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import SwiftUI

struct DayList: View {
    @Binding var days : [Day]
    
    var body: some View {
        List(days){ day in
            HStack{
                
                
                VStack(alignment: .leading){
                    Text(day.year).font(.system(size: 30))
                        .foregroundColor(.orange)
                    Text(day.month)
                    Text(day.day1)
                }
            }.background(Color.white.opacity(0.7))
                .cornerRadius(20)
                .padding(.horizontal, 10)
        }

    }
}

struct DayList_Previews: PreviewProvider {
    static var previews: some View {
        DayList(Binding.constant(<#_#>))
    }
}
