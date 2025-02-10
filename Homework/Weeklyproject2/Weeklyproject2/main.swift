//
//  main.swift
//  Weeklyproject2
//
//  Created by kyuhyeon Lee on 2/7/25.
//

import Foundation

struct Note {
    let date: Date
    let content: String
    let score: Int

    func display() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let formattedDate = formatter.string(from: date)
        print("날짜: \(formattedDate)")
        print("내용: \(content)")
        print("점수: \(score)")
        print("-------------------------")
    }
}

class NoteManager {
    private var notes: [Note] = []
    
    func addNote(content: String, moodScore: Int) {
        let note = Note(date: Date(), content: content, score: moodScore)
        notes.append(note)
        print("노트가 추가되었습니다.")
    }
    
    func displayNote() {
        if notes.isEmpty {
            print("존재하지 않습니다.")
        } else {
            for note in notes {
                note.display()
            }
        }
    }
    
    func removeNote() {
        if notes.isEmpty {
            print("제거할 메모가 없습니다.")
        } else {
            notes.removeLast()
            print("마지막 메모가 제거됐습니다.")
        }
    }
}

func runNoteSystem() {
    let manager = NoteManager()
    
    while true {
        print("""
              
              1. 노트 추가하기
              2. 노트 보기
              3. 노트 제거하기
              4. 나가기
              메뉴를 선택하세요:
              """, terminator: " ")
        
        guard let choice = readLine(), let intChoice = Int(choice) else {
            print("Invalid input.")
            continue
        }
        
        switch intChoice {
        case 1:
            print("메모를 입력하세요: ", terminator: " ")
            let content = readLine() ?? ""
            print("점수를 입력하세요: ", terminator: " ")
            if let moodInput = readLine(), let moodScore = Int(moodInput), (1...10).contains(moodScore) {
                manager.addNote(content: content, moodScore: moodScore)
            } else {
                print("정확한 점수를 입력해주세요.")
            }
        case 2:
            manager.displayNote()
        case 3:
            manager.removeNote()
        case 4:
            print("프로그램을 종료합니다.")
            return
        default:
            print("잘못된 선택입니다 다시 선택하세요.")
        }
    }
}

runNoteSystem()
