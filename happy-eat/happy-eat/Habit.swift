//
//  Habit.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/20/25.
//

import Foundation

struct Habit: Identifiable {
    var id: UUID = UUID()
    var name: String
    var benefits: [String]
//    var science: [String]
    var mon: String
    var isActive: Bool = false

    var repetitionsCompleted: Int?
    var repetitionsRequired: Int = 15
}

var habits = [Habit(name: "Eat Veggies", benefits: ["be happier", "have more energy", "get nutrients"], mon: "galaceia"),
              Habit(name: "Eat Grains", benefits: ["focus better", "have more energy", "get fiber"], mon: "MONkey")]
