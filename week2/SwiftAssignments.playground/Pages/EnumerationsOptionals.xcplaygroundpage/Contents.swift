// 1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oilDiesel = "diesel"
    
    func getPrice() -> GasolinePrice {
        switch self {
        case .oil92: return .priceOf92
        case .oil95: return .priceOf95
        case .oil98: return .priceOf98
        case .oilDiesel: return .priceOfDiesel
        }
    }
}

enum GasolinePrice {
    case priceOf92
    case priceOf95
    case priceOf98
    case priceOfDiesel
}

let someOil = Gasoline.oil92.getPrice()

Gasoline.oil92.rawValue

/* explain what is enum associated value and how it works:
 Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so. You can define Swift enumerations to store associated values of any given type, and the value types can be different for each case of the enumeration if needed.
 
 */


// 2
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}


let sam = People()
let hisPet = Pet(name: "Coco")

func samHas(Pet: Pet?) -> String {
    guard let hisPet = sam.pet else {
        return "no pet"
    }
    return "\(hisPet.name)"
}



let jo = People()
let pet = Pet(name: "Cat")
jo.pet = pet

if let myPet = jo.pet {
    print(myPet.name)
}

