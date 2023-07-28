import SwiftUI

class CreatureZoo : ObservableObject {
    @Published var creatures = [
        Creature(name: "Gorilla", emoji: "🦍"),
        Creature(name: "Peacock", emoji: "🦚"),
        Creature(name: "Squid", emoji: "🦑"),
        Creature(name: "Panda", emoji: "🐼"),
        Creature(name: "Dog", emoji: "🐶"),
        Creature(name: "T-Rex", emoji: "🦖"),
    ]
}

struct Creature : Identifiable {
    var name : String
    var emoji : String
    
    var id = UUID()
    var offset = CGSize.zero
    var rotation : Angle = Angle(degrees: 0)
}


extension CreatureZoo {
    func randomizeOffsets() {
        for index in creatures.indices {
            creatures[index].offset = CGSize(width: CGFloat.random(in: -200...200), height: CGFloat.random(in: -200...200))
            creatures[index].rotation = Angle(degrees: Double.random(in: 0...720))
        }
    }
    
    func synchronizeOffsets() {
        let randomOffset = CGSize(width: CGFloat.random(in: -200...200), height: CGFloat.random(in: -200...200))
        for index in creatures.indices {
            creatures[index].offset = randomOffset
        }
    }
    
    func indexFor(_ creature: Creature) ->  Double {
        if let index = creatures.firstIndex(where: { $0.id == creature.id }) {
            return Double(index)
        }
        return 0.0
    }
}
