//
//  ContentView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import SwiftUI

struct HabitAddView: View {
    @Environment(HabitViewModel.self) private var viewModel
//    @State private var viewModel = HabitViewModel()
    
//    viewModel.foodHabits[0].name = "testing"
//    print(viewModel.foodHabits.first.name)
    
    var body: some View {
        ScrollView {
            eatHabits
            thinkHabits
        }
        .navigationTitle("All Habits")
    }

    var eatHabits: some View {
        VStack(alignment: .leading) {
            Text("Eat well!")
                .font(.title2)
                .bold()
                .padding(.horizontal)
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(viewModel.foodHabits) { habit in
                    NavigationLink(destination: HabitAboutView(habit: habit)) {
                        SmallCircleView(habit: habit)
                            .foregroundStyle(habit.id == viewModel.getActiveHabit()?.id ? .yellow : .white)
                    }
                }
            }.padding()
        }.padding(.vertical)
    }

    var thinkHabits: some View {
        VStack(alignment: .leading) {
            Text("Think well!")
                .font(.title2)
                .bold()
                .padding(.horizontal)
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(viewModel.thinkHabits) { habit in
                    NavigationLink(destination: HabitAboutView(habit: habit)) {
                        SmallCircleView(habit: habit)
                            .foregroundStyle(.white)
                    }
                }
            }.padding()
        }.padding(.vertical)
    }
}

#Preview {
    HabitAddView()
}
