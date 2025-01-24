//
//  LargeCircleView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct LargeCircleView: View {
    var habit: Habit
    var actionPlan: String {
        habit.actionPlan ?? "Start this habit to make a plan!"
    }
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(Constants.color)
            VStack {
                if let frequencyGoal = habit.frequencyGoal {
                    Text("\(frequencyGoal) times a week")
                        .bold()
                }
                Text(habit.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Action Plan:")
                    .bold()
                Text(actionPlan)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

