//
//  DemoStateView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import SwiftUI

struct DemoStateView: View {
    
//    Option 1: Use a struct
//    @State private var theTask = TaskStruct(name: "Shut all windows", isComplete: false, lastCompleted: nil)
    
//    Option 2: Use a class
//    For initialization use @StateObject
//    @StateObject private var theTask = TaskClass(name: "Shut all windows", isComplete: false, lastCompleted: nil)
    
//    Option 3: Pass the class via the Environment
    @EnvironmentObject var theTask: TaskClass
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            
//            Option 1: With a Struct:
//            ControlPanel(theTask: self.$theTask)
            
//            Option 2a: With a Class passing a propery binding:
//            ControlPanel(isComplete: self.$theTask.isComplete)
            
//            Option 2b: With a Class passing the entire class:
            ControlPanel(theTask: self.theTask)

        }
    }
}

struct DemoStateView_Previews: PreviewProvider {
    static var previews: some View {
        let previewTask = TaskClass(name: "Shut all windows", isComplete: false, lastCompleted: nil)
//        DemoStateView()
//        Option 4:
        DemoStateView()
            .environmentObject(previewTask)
    }
}

struct ControlPanel: View {
//    Option 1: With a Struct:
//    @Binding var theTask: TaskStruct
    
//    Option 2a: With a Class passing a propery binding:
//    @Binding var isComplete: Bool
    
//    Option 2b: With a Class passing the entire class:
//    For reference only use @ObservedObject
    @ObservedObject var theTask: TaskClass
    
    var body: some View {
        HStack {
            if theTask.isComplete == false {
                Button (action: {
                    theTask.isComplete = true
                }){
                    Text("Mark complete")
                }.padding(.top)
            }
            else {
                Button (action: {
                    theTask.isComplete = false
                }){
                    Text("Reset")
                }.padding(.top)
            }
        }
    }
}
