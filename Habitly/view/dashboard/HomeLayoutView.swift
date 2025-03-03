//
//  HomeLayoutView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 26/12/24.
//

import Foundation
import SwiftUI

struct HomLayoutView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            
            // TabView for Bottom Navigation
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                MoodStatsView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Mood Stat")
                    }
                    .tag(1)
                
                ReportView()
                    .tabItem {
                        Image(systemName: "bookmark.fill")
                        Text("Report")
                    }
                    .tag(2)
                
                MyHabitsView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("My Habits")
                    }
                    .tag(3)
                
                AccountView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Account")
                    }
                    .tag(4)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
            }
            
               ToolbarItem(placement: .principal) { // Centers the title
                   Text(getTitle(for: selectedTab))
                       .font(.title2)
                       .fontWeight(.semibold)
               }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Handle settings action
                    }) {
                        Image(systemName: "ellipsis") // Settings icon
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                    }
                }
        }
    }

    // Function to set header title based on tab
    func getTitle(for index: Int) -> String {
        switch index {
        case 0: return "Home"
        case 1: return "Mood Stats"
        case 2: return "Report"
        case 3: return "My Habits"
        case 4: return "Account"
        default: return "Home"
        }
    }
}

struct HomLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        HomLayoutView()
    }
}
