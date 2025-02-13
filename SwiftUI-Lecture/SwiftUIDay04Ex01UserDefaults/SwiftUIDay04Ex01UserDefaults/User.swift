import SwiftUI

struct User: Codable {
    var name: String
    var age: Int
}

struct UserView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var message: String = "저장된 사용자 없음"

    var body: some View {
        VStack(spacing: 20) {
            Text("Codable 객체 저장 실습")
                .font(.title)

            TextField("이름 입력", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("나이 입력", text: $age)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)

            Button("저장하기") {
                if let userAge = Int(age) {
                    let user = User(name: name, age: userAge)
                    saveUser(user)
                    message = "사용자 저장 완료: \(user.name), \(user.age)세"
                } else {
                    message = "나이를 숫자로 입력하세요."
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("데이터 불러오기") {
                if let loadedUser = loadUser() {
                    message = "불러온 사용자: \(loadedUser.name), \(loadedUser.age)세"
                } else {
                    message = "저장된 사용자 없음"
                }
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text(message)
                .padding()
                .multilineTextAlignment(.center)
        }
        .padding()
    }

    // Codable 객체 저장
    func saveUser(_ user: User) {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(encoded, forKey: "currentUser")
        }
    }

    // Codable 객체 불러오기
    func loadUser() -> User? {
        if let savedUserData = UserDefaults.standard.data(forKey: "currentUser"),
           let decodedUser = try? JSONDecoder().decode(User.self, from: savedUserData) {
            return decodedUser
        }
        return nil
    }
}

#Preview {
    UserView()
}
