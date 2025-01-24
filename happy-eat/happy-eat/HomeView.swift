//
//  Home.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/23/25.
//

import SwiftUI

struct HomeView: View {
    @Environment(HabitViewModel.self) private var viewModel

    var activeHabit: Habit {
        viewModel.getActiveHabit() ?? Habit(name: "No habits yet!", benefits: [], mon: "")
    }

    var body: some View {
        Text("Your habit")
            .font(.title)
        LargeCircleView(habit: activeHabit)
            .padding()
        Button {
            print("they did it")
        } label: {
            Text("I did it!")
                .font(.title)
                .bold()
                .padding(.horizontal, 70)
                .padding(.vertical, 20)
        }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
    }
}

#Preview {
    HomeView()
        .environment(HabitViewModel())
}
