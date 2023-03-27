//
//  MainTabView.swift
//  StellarCopy
//
//  Created by Jacob Sock on 3/27/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        
        TabView() {
            ProfileView().tabItem {
                VStack {
                    Image(systemName:"person.circle.fill")
                    Text(verbatim: "Profile")
                }
            }.tag(1)
            
            
            CalendarView().tabItem {
                VStack {
                    Image(systemName:"calendar")
                    Text(verbatim: "Calendar View")
                }
            }.tag(2)
            
            
            RitualView().tabItem {
                VStack {
                    Image(systemName:"calendar")
                    Text(verbatim: "Calendar View")
                }
            }.tag(3)
          
          
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
