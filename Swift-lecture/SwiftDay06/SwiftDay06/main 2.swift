// main.swift
// Created by kyuhyeon Lee on 2/5/25.

import Foundation

print("Hello, World!")

print("실행 예제 번호 입력", terminator: "")
if let no = Int(readLine() ?? "0") {
    if no == 1 {
        let ex01 = FunctionEx()
        ex01.run()
    }

    if no == 2 {
        FunctionEx02.run()
    }
} else {
    print("유효한 숫자를 입력하세요.")
}
