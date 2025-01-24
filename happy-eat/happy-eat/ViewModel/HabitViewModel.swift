//
//  HabitViewModel.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import Foundation
import SwiftUI

@Observable class OnboardingState {
    var isOnboarding = true
}

@Observable class HabitViewModel {
    var foodHabits: [Habit]
    var thinkHabits: [Habit]
    var selectedHabitId: UUID?

    init(
        foodHabits: [Habit] = [
            Habit(name: "Eat Veggies", benefits: ["be happier", "have more energy", "get nutrients"], mon: "galaceia", isActive: true, actionPlan: "Have a salad for lunch.", frequencyGoal: 5),
            Habit(name: "Eat Grains", benefits: ["focus better", "have more energy", "get fiber"], mon: "MONkey"),
            Habit(name: "Drink Water", benefits: ["stay hydrated", "improve focus", "promote clear skin"], mon: "aqua"),
            Habit(name: "Eat Fruits", benefits: ["boost immunity", "get antioxidants", "improve digestion"], mon: "fruity"),
            Habit(name: "Eat Whole Grains", benefits: ["support digestion", "reduce cholesterol", "promote heart health"], mon: "wholesome"),
            Habit(name: "Have Fats", benefits: ["improve satiety", "fuel metabolism", "support hormone function"], mon: "fatty"),
            Habit(name: "Eat Protein", benefits: ["build muscle", "boost metabolism", "support cell repair"], mon: "pro-tien"),
            Habit(name: "Have Whole Foods", benefits: ["enhance nutrient intake", "reduce processed food consumption", "improve energy"], mon: "wholesy"),
            Habit(name: "Eat With Variety", benefits: ["promote balanced nutrition", "reduce food boredom", "get a wide range of nutrients"], mon: "vario")
        ],
        thinkHabits: [Habit] = [
            Habit(name: "Eat Yummy Food", benefits: ["Positive food view", "Improved mood", "Increased joy"], mon: "Eat what you love."),
            Habit(name: "No Distraction", benefits: ["Improved focus", "Mindful eating", "Better digestion"], mon: "Focus on your meal."),
            Habit(name: "Eat Together", benefits: ["Stronger bonds", "Social well-being", "Community connection"], mon: "Share meals with others."),
            Habit(name: "Hunger Cues", benefits: ["Mindful eating", "Better digestion", "Sustained energy"], mon: "Eat when you're hungry."),
            Habit(name: "Food Feelings", benefits: ["Mind-body connection", "Increased awareness", "Improved digestion"], mon: "Check how food affects you."),
            Habit(name: "Stop Food Police", benefits: ["Less guilt", "Improved body image", "Better relationship with food"], mon: "Stop labeling food as 'good' or 'bad'."),
            Habit(name: "Emotional Eating", benefits: ["Emotional awareness", "Improved mental health", "Better decision making"], mon: "Reflect before eating."),
            Habit(name: "Self-Compassion", benefits: ["Body acceptance", "Increased confidence", "Mental clarity"], mon: "Be kind to yourself."),
            Habit(name: "Gentle Movement", benefits: ["Improved well-being", "Stress relief", "Better mood"], mon: "Move in ways that feel good.")
        ])
    {
        self.foodHabits = foodHabits
        self.thinkHabits = thinkHabits
    }

    func getSelectedHabitIndex() -> (arrayType: String, index: Int)? {
        guard let habitId = selectedHabitId else {
            return nil
        }
        
        if let index = foodHabits.firstIndex(where: { $0.id == habitId }) {
            return ("food", index)
        } else if let index = thinkHabits.firstIndex(where: { $0.id == habitId }) {
            return ("think", index)
        }
        
        return nil
    }
    
    func updateSelectedHabit<T>(keyPath: WritableKeyPath<Habit, T>, value: T) {
            guard let (arrayType, index) = getSelectedHabitIndex() else {
                return
            }
            
            if arrayType == "food" {
                foodHabits[index][keyPath: keyPath] = value
            } else {
                thinkHabits[index][keyPath: keyPath] = value
            }
        }

    // Keep the original getSelectedHabit for when you just need the habit
    func getSelectedHabit() -> Habit? {
        guard let (arrayType, index) = getSelectedHabitIndex() else {
            return nil
        }
        
        return arrayType == "food" ? foodHabits[index] : thinkHabits[index]
    }
    
    func getActiveHabitIndex() -> (arrayType: String, index: Int)? {
        if let index = foodHabits.firstIndex(where: { $0.isActive }) {
            return ("food", index)
        } else if let index = thinkHabits.firstIndex(where: { $0.isActive }) {
            return ("think", index)
        }
        
        return nil
    }
    
    func getActiveHabit() -> Habit? {
        guard let (arrayType, index) = getActiveHabitIndex() else {
            return nil
        }
        
        return arrayType == "food" ? foodHabits[index] : thinkHabits[index]
    }
}
