//
//  DetailsView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    
    var body: some View {
        VStack {
            Text(task.name)
            Text("Some details")
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name: "Test Task", isComplete: false, lastCompleted: nil)))
    }
}
