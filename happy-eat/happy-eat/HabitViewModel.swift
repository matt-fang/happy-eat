//
//  HabitViewModel.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import Foundation

@Observable class HabitViewModel {
    var foodHabits: [Habit]
    var thinkHabits: [Habit]

    init(foodHabits: [Habit] = [
        Habit(name: "Eat Veggies", benefits: ["be happier", "have more energy", "get nutrients"], mon: "galaceia"),
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
            Habit(name: "Eat Food You Enjoy", benefits: ["Positive relationship with food"], mon: "Eat what you love."),
            Habit(name: "Eat Without Distraction", benefits: ["Improves focus"], mon: "Focus on your meal."),
            Habit(name: "Eat with Others", benefits: ["Creates community"], mon: "Share meals with others."),
            Habit(name: "Listen to Hunger Cues", benefits: ["Mindful eating"], mon: "Eat when you're hungry."),
            Habit(name: "Reflect on How Food Feels", benefits: ["Increases awareness"], mon: "Check how food affects you."),
            Habit(name: "Challenge Food Police", benefits: ["Reduces food guilt"], mon: "Stop labeling food as 'good' or 'bad'."),
            Habit(name: "Notice Emotional Eating", benefits: ["Emotional awareness"], mon: "Reflect before eating."),
            Habit(name: "Practice Self-Compassion", benefits: ["Body acceptance"], mon: "Be kind to yourself."),
            Habit(name: "Engage in Gentle Movement", benefits: ["Improves well-being"], mon: "Move in ways that feel good.")
         ]) {
             self.foodHabits = foodHabits
             self.thinkHabits = thinkHabits
    }
}
