//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Pieter Vallen on 23/03/2022.
//

import SwiftUI

@main
struct NightWatchApp: App {
    //    Option 3: Pass the class via the Environment
    @StateObject private var task = TaskClass(name: "Shut all windows", isComplete: false, lastCompleted: nil)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //    Option 3: Pass the class via the Environment
                .environmentObject(task)
        }
    }
}
