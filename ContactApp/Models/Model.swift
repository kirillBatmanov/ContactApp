//
//  Model.swift
//  ContactApp
//
//  Created by Кирилл Батманов on 26.10.2021.
//


struct Person {
    let name: String
    let sureName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(sureName)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let name = DataManager.shared.name.shuffled()
        let sureName = DataManager.shared.sureName.shuffled()
        let phoneNumber = DataManager.shared.phoneNumber.shuffled()
        let email = DataManager.shared.email.shuffled()
        
        for index in 0..<6 {
            let person = Person(
                name: name[index],
                sureName: sureName[index],
                phoneNumber: phoneNumber[index],
                email: email[index]
            )
            persons.append(person)
        }
        
        return persons
    }
    
}

