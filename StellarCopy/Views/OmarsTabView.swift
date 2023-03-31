//
//  OmarsTabView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/31/23.
//

import SwiftUI

struct OmarsTabView: View {
    var body: some View {
       NavigationStack {
           VStack(spacing: -10) {
               
               VStack {
                   
                   TabView {
                       DailyHoroscopeTextView()
                           .padding()
                       ChartView()
                       LunarEventCapsuleView()
   //                  MARK: LunarCalView()
                   }
                   .tabViewStyle(.page)
                   
               }
           }
           Spacer()
       }
    }
}

struct OmarsTabView_Previews: PreviewProvider {
    static var previews: some View {
        OmarsTabView()
    }
}
