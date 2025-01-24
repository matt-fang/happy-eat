//
//  happy_eatApp.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import SwiftUI

@main
struct happy_eatApp: App {
    @State private var viewModel = HabitViewModel()
    @State private var onboardingState = OnboardingState()
    
    var body: some Scene {
        WindowGroup {
            if onboardingState.isOnboarding {
                OnboardingFlow()
                    .environment(viewModel)
                    .environment(onboardingState)
            } else {
                HabitAddView()
                    .environment(viewModel)
                    .environment(onboardingState)
            }
        }
    }
}
