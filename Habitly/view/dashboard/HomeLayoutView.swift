//
//  HomeLayoutView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 26/12/24.
//

import Foundation
import SwiftUI

struct HomLayoutView: View {
    var body: some View {
        
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            MoodStatsView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Mood Stat")
            }
            ReportView().tabItem {
                Image(systemName: "bookmark.fill")
                Text("Report")
            }
            MyHabitsView().tabItem {
                Image(systemName: "person.fill")
                Text("My Habits")
            }
            AccountView().tabItem {
                Image(systemName: "person.fill")
                Text("Account")
            }
        }.navigationBarBackButtonHidden()
    }
}

struct HomLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        HomLayoutView()
    }
}
