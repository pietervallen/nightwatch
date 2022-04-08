//
//  DemoTabbarView.swift
//  NightWatch
//
//  Created by Pieter Vallen on 08/04/2022.
//

import SwiftUI

struct DemoTabbarView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Tab Label 1")
            }
            MapView().tabItem {
                Image(systemName: "map")
                Text("Tab Label 2")
            }
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Tab Label 3")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("TODO: build home screen")
    }
}
struct MapView: View {
    var body: some View {
        Text("TODO: build map screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("TODO: build settings screen")
    }
}

struct DemoTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        DemoTabbarView()
    }
}
