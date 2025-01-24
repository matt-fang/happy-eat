//
//  HabitConfirmView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct HabitConfirmView: View {
    @Environment(HabitViewModel.self) private var viewModel
    @Environment(OnboardingState.self) private var onboardingState
    
    var habit: Habit {
        viewModel.getSelectedHabit()!
    }

    var body: some View {
        VStack {
            LargeCircleView(habit: habit)
            Text("Benefits:")
                .font(.title2)
                .padding()
            ForEach(habit.benefits, id: \.self) { benefit in
                Text("· \(benefit)")
            }
            Button {
                print ("byebye")
                onboardingState.isOnboarding = false
            } label: {
                Text("Looks Good!")
                    .foregroundStyle(.white)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .foregroundStyle(.blue)
            .controlSize(.large)
            .padding(.vertical)
        }.padding()
            .onDisappear{
                viewModel.updateSelectedHabit(keyPath: \.isActive, value: true)
            }
    }
}

#Preview {
    HabitConfirmView()
}
