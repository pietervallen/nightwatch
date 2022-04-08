//
//  DetailsView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    
    var body: some View {
        VStack {
            Text(taskName)
            Text("Some details")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
