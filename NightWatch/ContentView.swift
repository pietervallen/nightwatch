//
//  ContentView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 23/03/2022.
//

import SwiftUI

let nightlyTasks = ["Check all windows", "Check all doors", "Check that the safe is locked", "Inspect security cameras", "Clear ice from sidewalks", "Document \"Strange and Unusual\" occurences"]
let weeklyTasks = ["Check inside all vacant rooms", "Walk the perimiter properly"]
let monthlyTasks = ["Test security alarm", "Test motion detectors", "Test smoke detectors"]

struct ContentView: View {
    var body: some View {
        List{
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }.font(.title3)) {
                ForEach(nightlyTasks, id: \.self, content:  {
                    taskName in
                    Text(taskName)
                })
            }
            Section(header: HStack {
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }.font(.title3)) {
                ForEach(weeklyTasks, id: \.self, content:  {
                    taskName in
                    Text(taskName)
                })
            }
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }.font(.title3)) {
                ForEach(monthlyTasks, id: \.self, content:  {
                    taskName in
                    Text(taskName)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
