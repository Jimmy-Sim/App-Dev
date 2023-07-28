import SwiftUI
import Guide

@main
struct MyApp: App {
    @StateObject var data = CreatureZoo()
    
    var body: some Scene {
        SPCAssessableWindowGroup(app: self, assessmentCandidates: [CreatureZoo()]) {
            NavigationStack { 
                ContentView()
                    .navigationTitle("My Creatures")
            }
            .environmentObject(data)
        }
    }
}
