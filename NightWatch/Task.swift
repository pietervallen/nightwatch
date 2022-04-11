//
//  Task.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
