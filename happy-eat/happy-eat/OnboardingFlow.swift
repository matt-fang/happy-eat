//
//  OnboardingFlow.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct OnboardingFlow: View {
    @Environment(HabitViewModel.self) private var viewModel
    
    var body: some View {
        NavigationStack {
            HabitAddView()
        }
    }
}
