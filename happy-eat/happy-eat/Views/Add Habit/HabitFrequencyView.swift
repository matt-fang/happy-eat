//
//  HabitFrequencyView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct HabitFrequencyView: View {
    @State private var frequency: Int = 3

    var body: some View {
        VStack {
            Text("How many times a week do you do this currently?")
                .font(.title)
                .bold()
                .padding()
                .multilineTextAlignment(.center)
            Picker("Weekly Frequency", selection: $frequency) {
                ForEach(1 ... 7, id: \.self) { number in
                    Text("\(number)")
                }
            }.pickerStyle(.wheel)
            BigNavigationButton(destination: AnyView(HabitFrequencyGoalView(goal: frequency + 2)), label: "Continue", icon: "chevron.right")
        }.padding()
    }
}

#Preview {
    HabitFrequencyView()
}
