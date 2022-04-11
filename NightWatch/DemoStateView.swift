//
//  DemoStateView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import SwiftUI

struct DemoStateView: View {
    @State private var theTask = Task(name: "Shut all windows", isComplete: false)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            
            ControlPanel(theTask: self.$theTask)
        }
    }
}

struct DemoStateView_Previews: PreviewProvider {
    static var previews: some View {
        DemoStateView()
    }
}

struct ControlPanel: View {
    @Binding var theTask: Task

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
