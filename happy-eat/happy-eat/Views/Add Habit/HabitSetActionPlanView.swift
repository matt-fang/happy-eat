//
//  HabitSetActionPlanView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct HabitSetActionPlanView: View {
    @Environment(HabitViewModel.self) private var viewModel
    
    @State private var plan: String = ""
    @FocusState private var textFieldIsFocused: Bool
    
    
    var body: some View {
        VStack {
            Text("What's your plan for doing this habit?")
                .font(.title)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .bold()
            TextField(
                "When this happens, I'll do this...",
                text: $plan,
                axis: .vertical
            )
            .focused($textFieldIsFocused)
            .onSubmit {
                print("here's the plan! \(plan)")
            }.padding()
                .textFieldStyle(.roundedBorder)
            .font(.system(size: 14))
            BigNavigationButton(destination: AnyView(HabitConfirmView()), label: "Continue", icon: "chevron.right")
        }.padding()
            .onDisappear {
                viewModel.updateSelectedHabit(keyPath: \.actionPlan, value: plan)
                print(viewModel.getSelectedHabit())
            }
    }
}

#Preview {
    HabitSetActionPlanView()
}
