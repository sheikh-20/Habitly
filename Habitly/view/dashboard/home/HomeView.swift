//
//  HomeView.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 18/12/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab = 0
    let tabsList = ["Today", "Weekly", "Overall"]
    
    var body: some View {
        VStack {
            // Custom Tab Selector (acts like a FilterChip Row)
            HStack(spacing: 10) {
                ForEach(0..<tabsList.count, id: \.self) { index in
                    Text(tabsList[index])
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(selectedTab == index ? Color.blue.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation {
                                selectedTab = index
                            }
                        }
                }
            }
            .padding()
            
            // Page-based ViewPager (Horizontal Pager)
            TabView(selection: $selectedTab) {
                TodayView().tag(0)
                WeeklyView().tag(1)
                OverallView().tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Removes default dots
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
