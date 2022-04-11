//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Pieter Vallen on 23/03/2022.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
