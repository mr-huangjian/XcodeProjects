//
//  ContentView.swift
//  NewsApp
//
//  Created by mr.huangjian on 2021/7/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    VStack {
                        Image("Search")
                        Text("Home")
                    }
                }
            
            SettingPage()
                .tabItem {
                    Image("Message")
                    Text("Setting")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
