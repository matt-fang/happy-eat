//
//  AboutHabitView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct HabitAboutView: View {
    @Environment(HabitViewModel.self) private var viewModel
    var habit: Habit

    var body: some View {
        VStack {
            LargeCircleView(habit: habit)
            Text("Benefits:")
                .font(.title2)
                .padding()
            ForEach(habit.benefits, id: \.self) { benefit in
                Text("· \(benefit)")
            }
            BigNavigationButton(destination: AnyView(HabitFrequencyView()), label: "Choose this Habit!", icon: "play.fill")
                .disabled(habit.id == viewModel.getActiveHabit()?.id ? true : false)
        }.padding()
            .onDisappear{
                viewModel.selectedHabitId = habit.id
            }
    }
}
