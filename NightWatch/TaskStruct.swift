//
//  Task.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import Foundation

struct TaskStruct {
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}

class TaskClass: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
}
