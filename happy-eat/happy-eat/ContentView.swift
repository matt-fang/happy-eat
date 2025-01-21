//
//  ContentView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = HabitViewModel()

    var body: some View {
        ScrollView {
            eatHabits
            thinkHabits
        }
    }

    var eatHabits: some View {
        VStack {
            Text("Eat well!")
                .font(.title)
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(viewModel.foodHabits) { habit in
                    SmallCircleView(habit: habit)
                }
            }.padding()
        }.padding(.vertical)
    }

    var thinkHabits: some View {
        VStack {
            Text("Think well!")
                .font(.title)
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(viewModel.thinkHabits) { habit in
                    SmallCircleView(habit: habit)
                }
            }.padding()
        }.padding(.vertical)
    }
}

struct SmallCircleView: View {
    var habit: Habit
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(Constants.color)
            Text(habit.name)
                .font(.body)
                .bold()
                .multilineTextAlignment(.center)
        }
    }
}

struct LargeCircleView: View {
    var habit: Habit
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(Constants.color)
            VStack {
                Text(habit.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Benefits:")
                    .bold()
                ForEach(habit.benefits, id: \.self) { benefit in
                    Text("· \(benefit)")
                    
                }
            }
        }
    }
}

#Preview {
    LargeCircleView(habit: HabitViewModel().thinkHabits[0])
}
