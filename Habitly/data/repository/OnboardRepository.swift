//
//  OnboardRepository.swift
//  Habitly
//
//  Created by Sheikh Mohideen on 19/12/24.
//

import Foundation

class OnboardRepository {
    static func getOnboardContent() -> [OnboardModel] {
        return [
            OnboardModel(title: "Welcome to Habitly - Your Personal Habit Tracker!", subTitle: "Take controlof your habits and transform your life with Habitly. Let's get started on your journey to success."),
            
            OnboardModel(title: "Explore Habitly Features for Your Journey!", subTitle: "With intuitive habit creation and insightful progress tracking. Habitly makes it easy to stay focused, motivated and accountable."),
            
            OnboardModel(title: "Unlock Your Potential with Habitly Now!", subTitle: "Achieve your goals with Habitly's suite of features. Start your habit journey today and unlock your full potential!")
        ]
    }
}
