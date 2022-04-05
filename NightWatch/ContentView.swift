//
//  ContentView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    // MARK: Nightly tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "moon.stars"))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .textCase(.uppercase)
                            .padding(.top)
                        }
                        Text("- Check all windows")
                        Text("- Check all doors")
                        Text("- Check that the safe is locked")
                        Text("- Inspect security cameras")
                        Text("- Clear ice from sidewalks")
                        Text("- Document \"Strange and Unusual\" occurences")
                    }
                    // MARK: Weekly tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "sunset"))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .textCase(.uppercase)
                            .padding(.top)
                        }
                        Text("- Check inside all vacant rooms")
                        Text("- Walk the perimiter properly")
                    }
                    // MARK: Monthly tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "calendar"))
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            Text("Monthly Tasks")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .textCase(.uppercase)
                            .padding(.top)
                        }
                        Text("- Test security alarm")
                        Text("- Test motion detectors")
                        Text("- Test smoke detectors")
                    }
                }
                .padding([.top, .leading])
                .foregroundColor(.gray)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
