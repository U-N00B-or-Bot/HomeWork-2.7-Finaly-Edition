//U-N00B-or-Bot

import Foundation


struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList()->[Person]{
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterrationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterrationCount{
            let person = Person(name: names[index], surname: surnames[index], phone: phones[index], email: emails[index])
            persons.append(person)
        }
        
        

      
        
     return persons
    }
}
