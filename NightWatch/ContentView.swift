//
//  ContentView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    
    var body: some View {
        NavigationView {
            List{
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText    : "Nightly Tasks")) {
                    
                    // Can I get both it's task and it's index in the array?
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id:\.0.id, content:  {
                        task, taskIndex in
                        
                        // Can I hold a copy of the "dollar-signed" version of the nightWatchTasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks
                        
                        // Can I use that wrapper to make a Binding?
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks
                        
                        // If I get a task out of that Binding<[Task]> (tasksBinding), will that "element" be a Binding to a Task (Binding<Task>)?
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    
                    // Can I get both it's task and it's index in the array?
                    let taskIndices = nightWatchTasks.weeklyTasks.indices
                    let tasks = nightWatchTasks.weeklyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id:\.0.id, content:  {
                        task, taskIndex in
                        
                        // Can I hold a copy of the "dollar-signed" version of the nightWatchTasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks
                        
                        // Can I use that wrapper to make a Binding?
                        let tasksBinding = nightWatchTasksWrapper.weeklyTasks
                        
                        // If I get a task out of that Binding<[Task]> (tasksBinding), will that "element" be a Binding to a Task (Binding<Task>)?
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    
                    // Can I get both it's task and it's index in the array?
                    let taskIndices = nightWatchTasks.monthlyTasks.indices
                    let tasks = nightWatchTasks.monthlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id:\.0.id, content:  {
                        task, taskIndex in
                        
                        // Can I hold a copy of the "dollar-signed" version of the nightWatchTasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks
                        
                        // Can I use that wrapper to make a Binding?
                        let tasksBinding = nightWatchTasksWrapper.monthlyTasks
                        
                        // If I get a task out of that Binding<[Task]> (tasksBinding), will that "element" be a Binding to a Task (Binding<Task>)?
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
//                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
//                    ForEach(nightWatchTasks.weeklyTasks,
//                            content:  {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
//                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
//                    ForEach(nightWatchTasks.monthlyTasks, content:  {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }.font(.title3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            let nightWatchTasks = NightWatchTasks()
            ContentView(nightWatchTasks: nightWatchTasks)
                .previewInterfaceOrientation(.portrait)
            TaskRow(task: Task(name: "test Task", isComplete: true, lastCompleted: nil))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/70.0/*@END_MENU_TOKEN@*/))
        }
    }
}

struct TaskRow: View {
    let task: Task
    
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}
