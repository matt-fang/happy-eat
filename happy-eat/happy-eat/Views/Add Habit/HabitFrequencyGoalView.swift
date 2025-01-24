//
//  HabitFrequencyGoalView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct HabitFrequencyGoalView: View {
    @Environment(HabitViewModel.self) private var viewModel
    
    var goal: Int

    var body: some View {
        VStack {
            Text("Great! Let's try to do this habit")
                .font(.title)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            Text("\(goal)")
                .font(.system(size: 300))
                .bold()
                .padding(.vertical, -30)
            Text("times a week.")
                .font(.title)
                .multilineTextAlignment(.center)
            BigNavigationButton(destination: AnyView(HabitSetActionPlanView()), label: "Continue", icon: "chevron.right")
        }.padding()
            .onDisappear {
                viewModel.updateSelectedHabit(keyPath: \.frequencyGoal, value: goal)
                print(viewModel.getSelectedHabit())
            }
    }
}

#Preview {
    HabitFrequencyGoalView(goal: 5)
}
