//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Pieter Vallen on 10/04/2022.
//

import Foundation

class NightWatchTasks: ObservableObject {
    @Published var nightlyTasks = [
        Task(name: "Check all windows", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Check that the safe is locked", isComplete: false, lastCompleted: nil),
        Task(name: "Inspect security cameras", isComplete: false, lastCompleted: nil),
        Task(name: "Clear ice from sidewalks", isComplete: false, lastCompleted: nil),
        Task(name: "Document \"Strange and Unusual\" occurences", isComplete: false, lastCompleted: nil)
    ]

    @Published var weeklyTasks = [
        Task(name: "Check inside all vacant rooms", isComplete: false, lastCompleted: nil),
        Task(name: "Walk the perimiter properly", isComplete: false, lastCompleted: nil)
    ]

    @Published var monthlyTasks = [
        Task(name: "Test security alarm", isComplete: false, lastCompleted: nil),
        Task(name: "Test motion detectors", isComplete: false, lastCompleted: nil),
        Task(name: "Test smoke detectors", isComplete: false, lastCompleted: nil)
    ]

}
