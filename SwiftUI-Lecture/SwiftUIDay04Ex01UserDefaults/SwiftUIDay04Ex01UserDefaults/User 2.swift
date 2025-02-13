//
//  User 2.swift
//  SwiftUIDay04Ex01UserDefaults
//
//  Created by kyuhyeon Lee on 2/13/25.
//


import SwiftUI

struct User2: Codable {
    var name: String
    var age: Int
}

struct ContentView3: View {
    @State private var savedUser: User?

    var body: some View {
        VStack(spacing: 20) {
            Button("사용자 저장하기") {
                let user = User(name: "John", age: 30)
                if let encodedData = try? JSONEncoder().encode(user) {
                    UserDefaults.standard.set(encodedData, forKey: "userObject")
                    print("사용자 저장 완료: \(user.name), 나이: \(user.age)")
                } else {
                    print("사용자 저장 실패")
                }
            }

            Button("사용자 불러오기") {
                if let savedData = UserDefaults.standard.data(forKey: "userObject"),
                   let loadedUser = try? JSONDecoder().decode(User.self, from: savedData) {
                    savedUser = loadedUser
                    print("사용자 불러오기 완료: \(loadedUser.name), 나이: \(loadedUser.age)")
                } else {
                    print("사용자 불러오기 실패")
                }
            }

            if let user = savedUser {
                Text("사용자 이름: \(user.name), 나이: \(user.age)")
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView3()
}
