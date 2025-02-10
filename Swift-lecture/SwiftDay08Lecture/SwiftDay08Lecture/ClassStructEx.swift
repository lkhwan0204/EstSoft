
//클래스 정의
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
//구조체 정의
struct Animal {
    var type: String
}

func changePersonName(){
    // 클래스 인스턴스 생성
    let person1 = Person(name: "Alice")
    let person2 = person1
    
    //구조체 인스턴스 생성
    var animal1: Animal = Animal(type: "Cat")
    var animal2 = animal1
    
    person2.name = "Bob"
    print(person1.name)
    print(person2.name)
    
    animal2.type = "Dog"
    print(animal1.type)
    print(animal2.type)
}

