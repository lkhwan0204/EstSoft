//  FunctionEx02.swift
//  SwiftDay06

struct FunctionEx02 {

    func run() {
        print("FunctionEx02.run()")

        // 다중 반환 값 예제
        let userInfo: (name: String, age: Int) = getUserInfo()
        print("\(userInfo.name)님은 \(userInfo.age)세입니다.")
    }

    // 이름과 나이를 입력 받는 함수
    func getUserInfo() -> (name: String, age: Int) {
        print("이름을 입력하세요: ", terminator: "")
        let name = readLine() ?? "Unknown"

        print("나이를 입력하세요: ", terminator: "")
        let age = Int(readLine() ?? "0") ?? 0 

        return (name: name, age: age)
    }
}
