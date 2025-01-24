//
//  SmallCircleView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct SmallCircleView: View {
    var habit: Habit
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(Constants.color)
            Text(habit.name)
                .font(.system(size: 14))
                .bold()
                .multilineTextAlignment(.center)
                .foregroundStyle(.primary)
                .padding()
        }
    }
}
