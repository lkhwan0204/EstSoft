//
//  ContentView.swift
//  SwiftUIDay03
//
//  Created by kyuhyeon Lee on 2/12/25.
//

import SwiftUI

class cntClass {
    var count = 0
    
    init(count: Int = 0){
        self.count = count
    }
}

struct Homeview: View {
    // 상태 변수 - 재 렌더링 된다.
    //@state var count = 0
    //레퍼런스로 선언하고 레퍼런스의 필드를 변경한다.
    var countRef: CntClass = cntClass(0)
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .frame(width: 200, height: 200)
            
            Text("Welcome to Home")
                .padding(20)
            
            Button("증가"){
                print("증가 버튼 눌렀다.", countRef.count)
                countRef.count += 1
            }
        }
    }
}

struct Settings : View {
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .resizable()
                .frame(width: 200, height: 200)
            Text("System Setting Page")
        }
    }
}

struct profile : View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 200, height: 200)
            Text("Profile Page")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            Homeview().tabItem {
                Label("Home", systemImage: "house")
            }
            Settings().tabItem {
                Label("Settings", systemImage: "gear")
            }
            profile().tabItem {
                Label("Profile", systemImage: "person.circle")
            }
        }
    }
}

#Preview {
    ContentView()
}
