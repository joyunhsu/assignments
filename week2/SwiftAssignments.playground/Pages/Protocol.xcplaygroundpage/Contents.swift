protocol PoliceMan {
    func arresrCriminal()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    
    func arresrCriminal() {
    }
}

struct Engineer: ToolMan {
    func fixComputer() {
    }
}

let person = Person(name: "Steven", toolMan: Engineer())

