import Foundation

protocol ProductProtocol {
    func display()
}

// 기존 Car 클래스가 있다면 새로운 이름 사용
class MyCar: ProductProtocol {
    func display() {
        print("Car")
    }
}

// 기존 Book 클래스가 있다면 새로운 이름 사용
class MyBook: ProductProtocol {
    func display() {
        print("Book")
    }
}

// 실행 함수
struct Main {
    static func main() {
        let products: [ProductProtocol] = [MyCar(), MyBook()]
        for product in products {
            product.display()
        }
    }
}
